import 'package:fpdart/fpdart.dart';
import 'package:multifast/src/generated/auth.pb.dart';
import 'package:multifast/src/models/error_model.dart';

abstract class AbsAuthService {
  Future<Either<ErrorModel, OneOfAuthResponse>> login(LoginRequest request);
}
