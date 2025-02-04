/*import 'dart:async';

import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/generated/qproducts.pbgrpc.dart';
import 'package:multifast/src/models/qproduct_model.dart';
import 'package:multifast/src/repositories/category_repository.dart';

class QProductRepository {
  final _qproductsController = StreamController<List<QProductModel>>.broadcast();

  List<QProductModel> qproducts = [];

  Stream<List<QProductModel>> get qproductsStream => _qproductsController.stream;

  void initStream({List<QProductModel>? filter}) {
    _qproductsController.add(filter ?? qproducts);
  }

  void saveQProducts(List<QProduct> entities) {
    qproducts = entities.map((product) => QProductModel(product)).toList();
  }

  List<QProductModel> search(String value, {bool isFound = false}) {
    if (value.isEmpty) {
      return [];
    }
    final list = List.of(qproducts);
    final filteredList = list.where((qproduct) => qproduct.entity.name.toLowerCase().contains(value.toLowerCase()));
    final filter = isFound ? filteredList.toList() : filteredList.take(5).toList();
    initStream(filter: filter);
    return filter;
  }

  QProductModel? searchByBarCode(String barcode) {
    for (var qproduct in qproducts) {
      if (qproduct.entity.barCode == barcode) {
        return qproduct;
      }
    }
    return null;
  }

  void addQProduct(QProduct product) {
    qproducts.add(QProductModel(product));
    _qproductsController.add(qproducts);
  }

  void searchByCategories() {
    final categories = getIt<CategoryRepository>().list;
    final List<String> selectedCategories = categories.where((cat) => cat.isSelected).map((c) => c.name).toList();
    final filteredList = qproducts.where((qproduct) => selectedCategories.contains(qproduct.entity.category)).toList();
    initStream(filter: filteredList);
  }
}
*/