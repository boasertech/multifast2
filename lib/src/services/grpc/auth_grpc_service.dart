import 'package:fpdart/fpdart.dart';
import 'package:multifast/core/config.dart';
import 'package:multifast/src/generated/auth.pbgrpc.dart';
import 'package:multifast/src/models/error_model.dart';
import 'package:multifast/src/services/abs_auth_service.dart';

class AuthGrpcService extends AbsAuthService {
  final AuthServiceClient _client = AuthServiceClient(Config.getConnectionGrpc());

  @override
  Future<Either<ErrorModel, OneOfAuthResponse>> login(LoginRequest request) async {
    try {
      final stopwatch = Stopwatch()..start();
      final response = await _client.login(request);
      stopwatch.stop();
      Config.printDebug('Login - Tiempo transcurrido: ${stopwatch.elapsedMilliseconds} ms');
      if (!response.hasError()) {
        return Either.right(response);
      }
      Config.talker.error(response.error.code, response.error.message);
      return Either.left(ErrorModel.setError(response.error));
    } catch (e) {
      Config.talker.error('FAIL_CONECCTION', e);
      return Either.left(ErrorModel('FAIL_CONECCTION', 'Se interrumpió la conexión con el servidor'));
    }
  }

  @override
  Future<Either<ErrorModel, CloseResponse>> logout(CloseRequest request) async {
    try {
      final stopwatch = Stopwatch()..start();
      final response = await _client.logout(request, options: Config.getCallOptions(Config.token));
      stopwatch.stop();
      Config.printDebug('Logout - Tiempo transcurrido: ${stopwatch.elapsedMilliseconds} ms');
      return Either.right(response);
    } catch (e) {
      Config.talker.error('FAIL_CONECCTION', e);
      return Either.left(ErrorModel('FAIL_CONECCTION', 'Se interrumpió la conexión con el servidor'));
    }
  }
}
