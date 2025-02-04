import 'package:multifast/src/generated/auth.pb.dart';

class EnterpriseModel {
  final Enterprise entity;
  bool isSelected;

  EnterpriseModel(this.entity, {this.isSelected = false});
}
