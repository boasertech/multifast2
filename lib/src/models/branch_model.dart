import 'package:multifast/src/generated/auth.pb.dart';

class BranchModel {
  final Branch entity;
  bool isSelected;

  BranchModel(this.entity, {this.isSelected = false});
}
