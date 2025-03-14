import 'package:flutter/material.dart';
import 'package:multifast/src/models/abs_model.dart';

abstract class AbsValueNotifier {
  ValueNotifier<List<AbsModel>> notifierList = ValueNotifier<List<AbsModel>>([]);
  List<AbsModel> _list = [];
  List<AbsModel> _listTemp = [];
  List<AbsModel> get list => List.from(_list);
  List<AbsModel> get listTemp => List.from(_listTemp);
  set list(List<AbsModel> value) => _list = List.from(value);
  set listTemp(List<AbsModel> value) => _listTemp = List.from(value);

  void close() {
    _list = [];
    _listTemp = [];
  }

  void setListOriginal() {
    listTemp = list.map((item) => item.clone()).toList();
    notifierList.value = listTemp;
  }

  void saveChanges() {
    list = listTemp.map((item) => item.clone()).toList();
  }

  void searchItems(String value) {
    notifierList.value = listTemp.where((item) => item.name.toUpperCase().contains(value.toUpperCase())).toList();
  }

  void deleteItem(int id) {
    int index = _list.indexWhere((element) => element.id == id);
    _list.removeAt(index);
  }

  bool hasData() {
    return list.isNotEmpty;
  }

  bool isSelectAll() {
    return listTemp.isNotEmpty && listTemp.every((item) => item.isSelected);
  }

  bool isSelectAllOriginal() {
    return list.isNotEmpty && list.every((item) => item.isSelected);
  }

  bool isSelectNone() {
    return listTemp.isEmpty || listTemp.every((item) => !item.isSelected);
  }

  void logoutCleandData() {
    _list = [];
    _listTemp = [];
    notifierList.value = listTemp;
  }
}
