import 'package:multifast/src/generated/storage.pb.dart';
import 'package:multifast/src/models/abs_model.dart';

class StorageModel extends AbsModel<Storage> {
  StorageModel(super.id, super.name, super.entity, {super.isSelected = true});

  @override
  AbsModel clone() {
    return StorageModel(id, name, entity, isSelected: isSelected);
  }
}
