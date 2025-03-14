import 'package:flutter/material.dart';
import 'package:multifast/src/models/abs_model.dart';

mixin MixinToggleSelection {
  final ValueNotifier<String> allSelect = ValueNotifier<String>('Todos');
  final String allText = 'Todos';

  void selectItem(int itemId, List<AbsModel> newList);
  void selectAllItems({bool? isSelect});

  void closeMixin(){
    allSelect.value = 'Todos';
  }

  void toggleItemSelected(AbsModel item) {
    item.isSelected = !item.isSelected;
  }

  void toggleAllItems(List<AbsModel> list, bool isSelect) {
    for (var item in list) {
      item.isSelected = isSelect;
    }
  }

  void toggleSelection(List<AbsModel> newList, int itemId) {
    final index = newList.indexWhere((item) => item.id == itemId);
    toggleItemSelected(newList[index]);
  }
}
