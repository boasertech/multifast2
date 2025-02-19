import 'package:flutter/material.dart';

class ProductController {
  ValueNotifier<int> notifierQuantity = ValueNotifier<int>(0);
  int _quantity = 0;
  int get quantity => _quantity;
  set list(int quantity) => _quantity = quantity;

  void initQuantity(int value) {
    _quantity = value;
    notifierQuantity.value = quantity;
  }

  void addQuantity() {
    _quantity++;
    notifierQuantity.value = quantity;
  }

  void removeQuantity() {
    if (_quantity == 0) {
      return;
    }
    _quantity--;
    notifierQuantity.value = _quantity;
  }
}
