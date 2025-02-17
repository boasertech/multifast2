import 'package:multifast/src/entities/storage_item_model.dart';
import 'package:multifast/src/generated/qproduct_detail.pb.dart';
import 'package:multifast/src/generated/qproducts.pbgrpc.dart';

class QProductModel {
  final QProduct entity;
  QProductDetailResponse? detail;
  List<StorageItem>? storages;

  bool isSelected;

  QProductModel(this.entity, {this.detail, this.isSelected = false, this.storages});
}
