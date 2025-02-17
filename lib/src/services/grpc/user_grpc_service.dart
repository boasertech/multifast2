import 'package:fpdart/fpdart.dart';
import 'package:multifast/core/config.dart';
import 'package:multifast/src/generated/user.pbgrpc.dart';
import 'package:multifast/src/models/error_model.dart';
import 'package:multifast/src/services/abs_user_service.dart';

class UserGrpcService extends AbsUserService {
  final UserServiceClient _client = UserServiceClient(Config.getConnectionGrpc());

  @override
  Future<Either<ErrorModel, UserUpdateResponse>> updateUser(UserUpdateRequest request) async{
    try {
      final stopwatch = Stopwatch()..start();
      final response = await _client.updateUser(request);
      stopwatch.stop();
      Config.printDebug('UpdateUser - Tiempo transcurrido: ${stopwatch.elapsedMilliseconds} ms');
      if (!response.hasError()) {
        return Either.right(response.userUpdateResponse);
      }
      Config.talker.error(response.error.code, response.error.message);
      return Either.left(ErrorModel.setError(response.error));
    } catch (e) {
      Config.talker.error('FAIL_CONECCTION', e);
      return Either.left(ErrorModel('FAIL_CONECCTION', 'Se interrumpió la conexión con el servidor'));
    }
  }
}
