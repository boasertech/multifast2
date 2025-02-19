import 'package:multifast/src/models/qproduct_model.dart';

class QProductQuotation {
  final QProductModel qproduct;
  int quantity;

  QProductQuotation(this.qproduct, {this.quantity = 0});
}
