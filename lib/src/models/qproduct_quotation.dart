import 'package:multifast/src/models/qproduct_model.dart';
import 'package:multifast/utils/const.dart';

class QProductQuotation {
  final QProductModel qproduct;
  double? newPrice;
  int quantity;
  int typeTaxId;
  String? observation;

  QProductQuotation(this.qproduct, {this.quantity = 0, this.typeTaxId = 10, this.newPrice, this.observation});

  String getAffectationType() {
    int index = constAffectation.indexWhere((item) => item.id.toString() == typeTaxId.toString());
    String affectation = constAffectation[index].abbreviation.toString();
    return affectation;
  }

  ConstValue getTypeTaxSelectd() {
    int index = constAffectation.indexWhere((item) => item.id.toString() == typeTaxId.toString());
    return constAffectation[index];
  }

  double getNewTotal() {
    double price = newPrice ?? qproduct.entity.totalPrice;
    return price * quantity;
  }

  double getNewPrice() {
    return newPrice ?? qproduct.entity.totalPrice;
  }

  double getNewPriceEdit(int tipo, double amount) {
    double newUnitPrice = 0;
    double unitPrice = qproduct.entity.totalPrice;
    switch (tipo) {
      case 1:
        newUnitPrice = (100 - amount) * unitPrice / 100;
        break;
      case 2:
        newUnitPrice = unitPrice - amount;
        break;
      case 3:
        double total = unitPrice * quantity;
        double discountTotal = total * amount / 100;
        newUnitPrice = unitPrice - (discountTotal / quantity);
        break;
      case 4:
        double total = unitPrice * quantity;
        newUnitPrice = (total - amount) / quantity;
        break;
    }
    return newUnitPrice;
  }

  double getUnitDiscountPercent({double? textPrice}) {
    double priceOperate = textPrice ?? newPrice ?? 0;
    if (priceOperate != 0) {
      double percentDiscount = 100 - ((priceOperate * 100) / qproduct.entity.totalPrice);
      return percentDiscount;
    }
    return 0;
  }

  double getUnitDiscountAmount({double? textPrice}) {
    double priceOperate = textPrice ?? newPrice ?? 0;
    if (priceOperate != 0) {
      return qproduct.entity.totalPrice - priceOperate;
    }
    return 0;
  }

  double getGeneralDiscountPercent({double? textPrice}) {
    double priceOperate = textPrice ?? newPrice ?? 0;
    if (priceOperate != 0) {
      double totalOriginal = qproduct.entity.totalPrice * quantity;
      double totalDiscount = getGeneralDiscountAmount(textPrice: priceOperate);
      double generalPercentDiscount = (totalDiscount * 100) / totalOriginal;
      return generalPercentDiscount;
    }
    return 0;
  }

  double getGeneralDiscountAmount({double? textPrice}) {
    double priceOperate = textPrice ?? newPrice ?? 0;
    if (priceOperate != 0) {
      return getUnitDiscountAmount(textPrice: priceOperate) * quantity;
    }
    return 0;
  }
}
