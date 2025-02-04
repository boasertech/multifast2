/*import 'dart:async';

import 'package:collection/collection.dart';
import 'package:multifast/src/models/qcategory_model.dart';
import 'package:multifast/src/models/qproduct_model.dart';

class QCategoryRepository {
  final _qcategoriesController = StreamController<List<QCategoryModel>>.broadcast();
  List<QCategoryModel> _qcategories = [];
  List<QCategoryModel> _qcategoriesTemp = [];
  late QCategoryModel selectAllCategories;
  Stream<List<QCategoryModel>> get qcategoriesStream => _qcategoriesController.stream;
  List<QCategoryModel> get qcategories => List.from(_qcategories);
  List<QCategoryModel> get qcategoriesTemp => List.from(_qcategoriesTemp);

  void initStream() {
    cancelChanges();
    selectAllCategories.isSelected = qcategories.every((category) => category.isSelected);
    Future.delayed(Duration(milliseconds: 100), () {
      _qcategoriesController.add(_qcategories);
    });
  }

  void dispose() {
    _qcategoriesController.close();
  }

  void initCategories(List<QProductModel> list) {
    var groupedCategories = groupBy(list, (QProductModel p) => p.entity.category);
    _qcategories = groupedCategories.keys.map((category) {
      int index = groupedCategories.keys.toList().indexOf(category);
      return QCategoryModel(index, category);
    }).toList();
    _qcategoriesTemp = _qcategories.map((qcategory) => qcategory.clone()).toList();
    selectAllCategories = QCategoryModel(qcategories.length, 'Todos');
  }

  void saveChanges() {
    _qcategories = qcategoriesTemp.map((category) => category.clone()).toList();
  }

  void cancelChanges() {
    _qcategoriesTemp = _qcategories.map((category) => category.clone()).toList();
  }

  void toggleSelectAllCategories() {
    selectAllCategories.isSelected = !selectAllCategories.isSelected;
    for (var category in qcategoriesTemp) {
      category.isSelected = selectAllCategories.isSelected;
    }
    _qcategoriesController.add(qcategoriesTemp);
  }

  void toggleSelectCategory(int qcategoryId, List<QCategoryModel> list) {
    var categoryTemp = qcategoriesTemp.firstWhere((category) => category.qcategoryId == qcategoryId);
    var category = list.firstWhere((category) => category.qcategoryId == qcategoryId);
    category.isSelected = !category.isSelected;
    categoryTemp.isSelected = category.isSelected;
    selectAllCategories.isSelected = qcategoriesTemp.every((category) => category.isSelected);
    _qcategoriesController.add(list);
  }

  void searchCategory(String value) {
    final list = qcategoriesTemp;
    if (value.isEmpty) {
      _qcategoriesController.add(list);
      return;
    }
    final filteredList = list.where((qcategory) => qcategory.name.toLowerCase().contains(value.toLowerCase())).toList();
    _qcategoriesController.add(filteredList);
  }
}
*/