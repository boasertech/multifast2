import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:multifast/src/models/qcategory_model.dart';
import 'package:multifast/src/models/qproduct_model.dart';
import 'package:multifast/src/repositories/abs_stream_properties.dart';

class CategoryRepository extends AbsStreamProperties<QCategoryModel, String> {
  late QCategoryModel selectAllCategories;
  ValueNotifier<String> countCategoriesSelected = ValueNotifier<String>('Todos');

  @override
  void initStream() {
    super.cancelChanges();
    selectAllCategories.isSelected = super.list.every((category) => category.isSelected);
    super.initStream();
  }

  @override
  QCategoryModel clone(QCategoryModel item) {
    return QCategoryModel(item.qcategoryId, item.name, isSelected: item.isSelected);
  }

  @override
  String forSearch(QCategoryModel item) {
    return item.name;
  }

  @override
  void saveChanges() {
    super.saveChanges();
    int selectedCount = list.where((item) => item.isSelected).length;
    if (selectedCount == list.length) {
      countCategoriesSelected.value = 'Todos';
    } else {
      countCategoriesSelected.value = '$selectedCount categorías seleccionadas';
    }
  }

  @override
  void saveList(List<String> list) {
    final List<QCategoryModel> categoriesList = [];
    for (var i = 0; i < list.length; i++) {
      categoriesList.add(QCategoryModel(i, list[i]));
    }
    super.list = categoriesList;
    listTemp = super.list.map((category) => clone(category)).toList();
    selectAllCategories = QCategoryModel(super.list.length, 'Todos');
  }

  List<String> convertProductsToCategories(List<QProductModel> products) {
    var groupedCategories = groupBy(products, (QProductModel p) => p.entity.category);
    final categories = groupedCategories.keys.toList();
    return categories;
  }

  bool isSelectNone() {
    return listTemp.isEmpty || listTemp.every((item) => !item.isSelected);
  }

  void toggleSelectAllCategories() {
    selectAllCategories.isSelected = !selectAllCategories.isSelected;
    for (var category in super.listTemp) {
      category.isSelected = selectAllCategories.isSelected;
    }
    super.updateStreamWithTemp(super.listTemp);
  }

  void cleanFiltersCategories() {
    selectAllCategories.isSelected = true;
    for (var category in super.listTemp) {
      category.isSelected = selectAllCategories.isSelected;
    }
    super.updateStreamWithTemp(super.listTemp);
  }

  void toggleSelectCategory(int qcategoryId, List<QCategoryModel> list) {
    var categoryTemp = super.listTemp.firstWhere((category) => category.qcategoryId == qcategoryId);
    var category = list.firstWhere((category) => category.qcategoryId == qcategoryId);
    category.isSelected = !category.isSelected;
    categoryTemp.isSelected = category.isSelected;
    selectAllCategories.isSelected = super.listTemp.every((category) => category.isSelected);
    super.updateStreamWithTemp(list);
  }
}
