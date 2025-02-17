import 'dart:convert';

import 'package:multifast/core/config.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/entities/storage_item_model.dart';
import 'package:multifast/src/generated/qproducts.pbgrpc.dart';
import 'package:multifast/src/local_repositories/storage_repository.dart';
import 'package:multifast/src/models/qproduct_model.dart';
import 'package:multifast/src/repositories/abs_stream_properties.dart';
import 'package:multifast/src/repositories/category_repository.dart';

class ProductRepository extends AbsStreamProperties<QProductModel, QProduct> {
  @override
  QProductModel clone(QProductModel item) {
    return item;
  }

  @override
  String forSearch(QProductModel item) {
    return item.entity.name.toUpperCase();
  }

  @override
  void saveList(List<QProduct> list) {
    super.list = list.map((product) {
      List<StorageItem>? productStorages;
      if (product.storagesJson.isNotEmpty) {
        try {
          List<dynamic> decodedStorages = jsonDecode(product.storagesJson);
          productStorages = decodedStorages.map((s) => StorageItem.fromJson(s)).toList();
        } catch (e) {
          Config.talker.error("Error al decodificar storages para el producto ${product.productId}: $e");
        }
      }
      return QProductModel(product, storages: productStorages);
    }).toList();
    listTemp = super.list;
  }

  /*void searchByAllFilters(String value) {
    final listAux = super.listTemp.where((p) => forSearch(p).contains(value.toUpperCase())).toList();
    updateStreamWithTemp(listAux);
  }*/

  /*void searchByAllFilters(String value) {
    final searchTerms = value.trim().split(RegExp(r'\s+')).map((e) => e.toUpperCase()).toList();

    final listAux = super.listTemp.where((p) {
      return searchTerms.every((term) => forSearch(p).contains(term));
    }).toList();

    updateStreamWithTemp(listAux);
  }*/

  void searchByAllFilters(String value) {
    final searchTerms = value.trim().split(RegExp(r'\s+')).map((e) => e.toUpperCase()).toList();

    final listAux = super.listTemp.where((p) {
      final searchField = '${forSearch(p)} ${p.entity.barCode.toUpperCase()}';

      return searchTerms.every((term) => searchField.contains(term));
    }).toList();

    updateStreamWithTemp(listAux);
  }

  void applyFilter() {
    final categoryRepository = getIt<CategoryRepository>();
    final List<String> selectedCategories =
        categoryRepository.list.where((cat) => cat.isSelected).map((c) => c.name).toList();

    final storageRepository = getIt<StorageRepository>();
    final List<int> selectedStorages = storageRepository.list.where((sto) => sto.isSelected).map((s) => s.id).toList();

    //final subCategoryRepository = getIt<SubCategoryRepository>();
    //final List<int> selectedSubCategories = subCategoryRepository.list.where((sc) => sc.isSelected).map((s) => s.id).toList();

    bool allCategoriesSelected = selectedCategories.length == categoryRepository.list.length;
    bool allStoragesSelected = selectedStorages.length == storageRepository.list.length;
    //bool allSubCategoriesSelected = selectedSubCategories.length == subCategoryRepository.list.length;

    super.listTemp = list.where((qproduct) {
      bool matchesCategory = allCategoriesSelected || selectedCategories.contains(qproduct.entity.category);
      //bool matchesSubCategory = allSubCategoriesSelected || selectedSubCategories == qproduct.entity.sub;
      bool matchesStorage = allStoragesSelected ||
          (qproduct.storages?.any((storage) => selectedStorages.contains(storage.storageId)) ?? false);
      return matchesCategory && matchesStorage;
    }).toList();
    super.updateTempStrem();
  }

  void cleanFilters() {
    final storageRepository = getIt<StorageRepository>();
    storageRepository.selectAllItems(isSelect: true);
    storageRepository.saveChanges();

    final categoryRepository = getIt<CategoryRepository>();
    categoryRepository.cleanFiltersCategories();
    categoryRepository.saveChanges();
  }

  QProductModel? searchByBarCode(String barcode) {
    for (var qproduct in super.list) {
      if (qproduct.entity.barCode == barcode) {
        return qproduct;
      }
    }
    return null;
  }
}
