import 'package:multifast/src/generated/qproduct_detail.pb.dart';
import 'package:multifast/src/generated/qproducts.pbgrpc.dart';

class QProductModel {
  final QProduct entity;
  QProductDetailResponse? detail;
  bool isSelected;

  QProductModel(this.entity, {this.detail, this.isSelected = false});
}
