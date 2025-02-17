import 'package:multifast/src/generated/enterprise.pb.dart';
import 'package:multifast/src/local_repositories/abs_value_notifier.dart';
import 'package:multifast/src/local_repositories/mixin_toggle_selection.dart';
import 'package:multifast/src/models/abs_model.dart';
import 'package:multifast/src/models/sub_category_model.dart';

class SubCategoryRepository extends AbsValueNotifier with MixinToggleSelection {

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
    allSelect.value = selectedCount == list.length ? 'Todos' : '$selectedCount almacenes seleccionados';
  }

  @override
  void logoutCleandData() {
    super.logoutCleandData();
    allSelect.value = 'Todos';
  }

  void setAllData(ListSubCategoryResponse response) {
    list = response.subCategories.map((subCategory) => SubCategoryModel(subCategory.subCategoryId.toInt(), subCategory.name, subCategory)).toList();
  }
}