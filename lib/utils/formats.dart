import 'package:intl/intl.dart';

String formatAmount(num amount) {
  final formatter = NumberFormat("#,##0.00", "en_US");
  return formatter.format(amount);
}