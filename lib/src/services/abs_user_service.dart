import 'package:fpdart/fpdart.dart';
import 'package:multifast/src/generated/user.pb.dart';
import 'package:multifast/src/models/error_model.dart';

abstract class AbsUserService {
  Future<Either<ErrorModel, UserUpdateResponse>> updateUser(UserUpdateRequest request);
}
