import 'package:flutter/material.dart';
import 'package:multifast/src/local_repositories/sqlite_bd/detail_quotation_db.dart';
import 'package:multifast/src/local_repositories/sqlite_bd/quotation_db.dart';
import 'package:multifast/src/models/qproduct_quotation.dart';
import 'package:multifast/src/models/sqlite/detail_quotation_sql.dart';
import 'package:multifast/src/models/sqlite/quotation_sql.dart';

class NewQuotationController {
  ValueNotifier<List<QProductQuotation>> notifierList = ValueNotifier<List<QProductQuotation>>([]);
  List<QProductQuotation> _list = [];
  List<QProductQuotation> get list => List.from(_list);
  set list(List<QProductQuotation> value) => _list = List.from(value);
  QuotationDb quotationDb = QuotationDb();
  DetailQuotationDb detailQuotationDb = DetailQuotationDb();

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

  void saveNewQuotation() async {
    final quotation = QuotationSql(
      numberQuotation: 1,
      clientId: 1203748,
      dateRegister: DateTime.now().toIso8601String(),
      validityId: 373,
      validityDuration: '7 DIAS',
      documentTypeId: 1,
      coinId: 1,
      coinChange: 5,
      userSaleId: 7084,
      formatPrintId: 784,
      payId: 1,
      observation: '',
    );
    int quotationId = await quotationDb.insertQuotation(quotation);
    for (var item in list) {
      final detailQuotation = DetailQuotationSql(
        quotationId: quotationId,
        productId: item.qproduct.entity.productId.toInt(),
        originalPrice: item.qproduct.entity.totalPrice,
        quantity: item.quantity,
        taxTypeId: item.typeTaxId,
        observation: item.observation,
        newPrice: item.newPrice,
      );
      await detailQuotationDb.insertQuotation(detailQuotation);
    }
  }
}
