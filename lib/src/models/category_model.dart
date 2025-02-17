import 'package:multifast/src/generated/category.pb.dart';
import 'package:multifast/src/models/abs_model.dart';

class CategoryModel extends AbsModel<Category> {
  CategoryModel(super.id, super.name, super.entity, {super.isSelected = true});

  @override
  AbsModel clone() {
    return CategoryModel(id, name, entity, isSelected: isSelected);
  }
}
