import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/generated/qproducts.pbgrpc.dart';
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
    super.list = list.map((product) => QProductModel(product)).toList();
    listTemp = super.list;
  }

  void searchByAllFilters(String value) {
    final listAux = super.listTemp.where((p) => forSearch(p).contains(value.toUpperCase())).toList();
    updateStreamWithTemp(listAux);
  }

  void applyFilter() {
    final categoryRepository = getIt<CategoryRepository>();
    final List<String> selectedCategories =
        categoryRepository.list.where((cat) => cat.isSelected).map((c) => c.name).toList();
    final filteredList = list.where((qproduct) => selectedCategories.contains(qproduct.entity.category)).toList();
    super.listTemp = filteredList;
    super.updateTempStrem();
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
