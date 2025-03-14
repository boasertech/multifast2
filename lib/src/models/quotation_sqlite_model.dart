import 'package:intl/intl.dart';
import 'package:multifast/src/models/abs_model.dart';
import 'package:multifast/src/models/sqlite/detail_quotation_sql.dart';
import 'package:multifast/src/models/sqlite/quotation_sql.dart';

class QuotationSqliteModel extends AbsModel<QuotationSql> {
  List<DetailQuotationSql> details;
  QuotationSqliteModel(super.id, super.name, super.entity, {super.isSelected = false, this.details = const []});

  @override
  AbsModel clone() {
    return QuotationSqliteModel(id, name, entity, isSelected: isSelected);
  }

  double getTotal() {
    double total = 0;
    for (var detail in details) {
      total += detail.newPrice ?? detail.originalPrice! * detail.quantity!;
    }
    return total;
  }

  String getDate() {
    DateTime date = DateTime.parse(entity.dateRegister!);
    String format = DateFormat("dd/MM/yyyy  •  hh:mm a").format(date);
    return format;
  }
}
