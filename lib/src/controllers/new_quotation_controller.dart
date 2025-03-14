import 'package:flutter/material.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/local_repositories/sqlite_bd/detail_quotation_db.dart';
import 'package:multifast/src/local_repositories/sqlite_bd/quotation_db.dart';
import 'package:multifast/src/models/internal/information_quotation_model.dart';
import 'package:multifast/src/models/qproduct_quotation.dart';
import 'package:multifast/src/models/quotation_sqlite_model.dart';
import 'package:multifast/src/models/sqlite/detail_quotation_sql.dart';
import 'package:multifast/src/models/sqlite/quotation_sql.dart';
import 'package:multifast/src/repositories/product_repository.dart';

class NewQuotationController {
  ValueNotifier<List<QProductQuotation>> notifierList = ValueNotifier<List<QProductQuotation>>([]);
  ValueNotifier<bool> notifierDiscount = ValueNotifier(false);
  List<QProductQuotation> _list = [];
  List<QProductQuotation> _listEdit = [];
  List<QProductQuotation> get list => List.from(_list);
  set list(List<QProductQuotation> value) => _list = List.from(value);
  QuotationDb quotationDb = QuotationDb();
  DetailQuotationDb detailQuotationDb = DetailQuotationDb();

  void addDiscount(bool value) {
    notifierDiscount.value = value;
  }

  void clearQuotation() {
    _list = [];
    notifierList.value = list;
  }

  void deleteDetail(int index) {
    _list.removeAt(index);
    notifierList.value = list;
  }

  void setDetails(List<DetailQuotationSql> details) {
    _list = [];
    _listEdit = [];
    final repoProduct = getIt<ProductRepository>();
    for (var detail in details) {
      final product = repoProduct.getQProductById(detail.productId!);
      final productQuotation = QProductQuotation(product);
      productQuotation.newPrice = detail.newPrice;
      productQuotation.observation = detail.observation;
      productQuotation.quantity = detail.quantity!;
      productQuotation.typeTaxId = detail.taxTypeId!;
      productQuotation.quotationDetailId = detail.detailQuotationId;
      _list.add(productQuotation);
    }
    _listEdit = list;
    notifierList.value = list;
  }

  Future<int> getNumber() async {
    int number = await quotationDb.getQuotationCount();
    return number;
  }

  int getQuantityProduct(int productId) {
    final index = list.indexWhere((item) => item.qproduct.entity.productId == productId);
    return index != -1 ? list[index].quantity : 0;
  }

  double getTotal() {
    double total = 0;
    for (var p in list) {
      total += p.getNewPrice() * p.quantity;
    }
    return total;
  }

  double getIgv() {
    double igv = getTotal() * 18 / 118;
    return igv;
  }

  double getSubTotal() {
    return getTotal() - getIgv();
  }

  void setQProductQuantity(QProductQuotation value) {
    final index = list.indexWhere((item) => item.qproduct.entity.productId == value.qproduct.entity.productId);
    if (index == -1) {
      _list.add(value);
    } else {
      if (value.quantity == 0) {
        _list.removeAt(index);
      } else {
        _list[index].quantity = value.quantity;
      }
    }
    notifierList.value = list;
  }

  Future<void> deleteQuotation(QuotationSqliteModel model) async {
    for (var detail in model.details) {
      await detailQuotationDb.deleteQuotation(detail.detailQuotationId!);
    }
    await quotationDb.deleteQuotation(model.entity.quotationId!);
  }

  Future<void> saveNewQuotation(InformationQuotationModel infoModel, int clientId, bool isEdit) async {
    QuotationSql sql = QuotationSql(
      quotationId: infoModel.quotationId,
      numberQuotation: int.parse(infoModel.number!),
      clientId: clientId,
      clientName: infoModel.fullname,
      dateRegister: DateTime.now().toIso8601String(),
      dateQuotation: infoModel.date,
      validityId: int.parse(infoModel.offerValidity!.id.toString()),
      validityDuration: infoModel.expirationDate,
      documentTypeId: int.parse(infoModel.documentType!.id.toString()),
      coinId: infoModel.coinType!.id.toString(),
      coinChange: infoModel.exchange,
      sellerId: int.parse(infoModel.seller!.id.toString()),
      sellerName: infoModel.seller!.name,
      payId: int.parse(infoModel.payType!.id.toString()),
      voucherId: int.parse(infoModel.voucherType!.id.toString()),
      observation: infoModel.observations,
    );

    int quotationId = 0;
    if (isEdit) {
      quotationId = await quotationDb.updateQuotation(sql);
    } else {
      quotationId = await quotationDb.insertQuotation(sql);
    }

    for (var item in List.from(_listEdit)) {
      if (!list.any((e) => e.quotationDetailId == item.quotationDetailId)) {
        await detailQuotationDb.deleteQuotation(item.quotationDetailId);
      }
    }

    for (var item in list) {
      final detailQuotation = DetailQuotationSql(
        detailQuotationId: item.quotationDetailId,
        quotationId: quotationId,
        productId: item.qproduct.entity.productId.toInt(),
        originalPrice: item.qproduct.entity.totalPrice,
        quantity: item.quantity,
        taxTypeId: item.typeTaxId,
        observation: item.observation,
        newPrice: item.newPrice,
      );
      if (detailQuotation.detailQuotationId == null) {
        await detailQuotationDb.insertQuotation(detailQuotation);
      } else {
        await detailQuotationDb.updateQuotation(detailQuotation);
      }
    }
  }
}
