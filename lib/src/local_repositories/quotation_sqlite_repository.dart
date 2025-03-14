import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/controllers/new_quotation_controller.dart';
import 'package:multifast/src/local_repositories/abs_value_notifier.dart';
import 'package:multifast/src/local_repositories/mixin_toggle_selection.dart';
import 'package:multifast/src/models/abs_model.dart';
import 'package:multifast/src/models/quotation_sqlite_model.dart';
import 'package:multifast/src/models/sqlite/detail_quotation_sql.dart';
import 'package:multifast/src/models/sqlite/quotation_sql.dart';

class QuotationSqliteRepository extends AbsValueNotifier with MixinToggleSelection {
  void setAllData(List<QuotationSql> response, List<DetailQuotationSql> details) {
    list = response.map(
      (quotation) {
        List<DetailQuotationSql> auxDetails =
            details.where((detail) => detail.quotationId! == quotation.quotationId).toList();
        return QuotationSqliteModel(quotation.quotationId!, quotation.clientName!, quotation, details: auxDetails);
      },
    ).toList();
    notifierList.value = list;
  }

  @override
  void selectAllItems({bool? isSelect}) {
    bool isSelected = isSelect ?? !isSelectAllOriginal();
    toggleAllItems(list, isSelected);
    notifierList.value = list;
  }

  @override
  void selectItem(int itemId, List<AbsModel> newList) {
    toggleSelection(newList, itemId);
    notifierList.value = List.from(newList);
  }

  int countSelected() {
    return list.where((item) => item.isSelected).toList().length;
  }

  QuotationSqliteModel getOnlyQuotationSelected() {
    return list.where((item) => item.isSelected).toList().first as QuotationSqliteModel;
  }

  Future<void> deleteQuotations() async {
    final itemsToRemove = list.where((e) => e.isSelected).toList();

    for (var element in itemsToRemove) {
      int id = element.id;
      await getIt<NewQuotationController>().deleteQuotation(element as QuotationSqliteModel);
      deleteItem(id);
    }
    notifierList.value = list;
  }
}
