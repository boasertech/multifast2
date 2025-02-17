import 'package:multifast/src/generated/enterprise.pb.dart';
import 'package:multifast/src/local_repositories/abs_value_notifier.dart';
import 'package:multifast/src/local_repositories/mixin_toggle_selection.dart';
import 'package:multifast/src/models/abs_model.dart';
import 'package:multifast/src/models/category_model.dart';

class CategoryRepository extends AbsValueNotifier with MixinToggleSelection {
  @override
  void selectAllItems({bool? isSelect}) {
    bool isSelected = isSelect ?? !isSelectAll();
    toggleAllItems(listTemp, isSelected);
    notifierList.value = listTemp;
  }

  @override
  void selectItem(int itemId, List<AbsModel> newList) {
    toggleSelection(newList, itemId);
    notifierList.value = List.from(newList);
  }

  @override
  void saveChanges() {
    super.saveChanges();
    int selectedCount = list.where((item) => item.isSelected).length;
    allSelect.value = selectedCount == list.length ? 'Todos' : '$selectedCount categorías seleccionadas';
  }

  @override
  void logoutCleandData() {
    super.logoutCleandData();
    allSelect.value = 'Todos';
  }

  void setAllData(ListCategoryResponse response) {
    list = response.categories.map((category) => CategoryModel(category.categoryId.toInt(), category.name, category)).toList();
  }
}
