import 'package:multifast/src/generated/category.pb.dart';
import 'package:multifast/src/models/abs_model.dart';

class SubCategoryModel extends AbsModel<SubCategory> {
  SubCategoryModel(super.id, super.name, super.entity, {super.isSelected = true});

  @override
  AbsModel clone() {
    return SubCategoryModel(id, name, entity, isSelected: isSelected);
  }
}
