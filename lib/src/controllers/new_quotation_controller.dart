import 'package:flutter/material.dart';
import 'package:multifast/src/models/qproduct_quotation.dart';

class NewQuotationController {
  ValueNotifier<List<QProductQuotation>> notifierList = ValueNotifier<List<QProductQuotation>>([]);
  List<QProductQuotation> _list = [];
  List<QProductQuotation> get list => List.from(_list);
  set list(List<QProductQuotation> value) => _list = List.from(value);

  int getQuantityProduct(int productId) {
    final index = list.indexWhere((item) => item.qproduct.entity.productId == productId);
    return index != -1 ? list[index].quantity : 0;
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
}
