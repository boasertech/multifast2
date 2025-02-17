import 'package:fpdart/fpdart.dart';
import 'package:multifast/core/config.dart';
import 'package:multifast/src/generated/enterprise.pbgrpc.dart';
import 'package:multifast/src/models/error_model.dart';
import 'package:multifast/src/services/abs_enterprise_service.dart';

class EnterpriseGrpcService extends AbsEnterpriseService {
  final EnterpriseServiceClient _client = EnterpriseServiceClient(Config.getConnectionGrpc());

  @override
  Future<Either<ErrorModel, DataEnterpriseResponse>> getDataEnterprise(EnterpriseRequest request) async {
    try {
      final stopwatch = Stopwatch()..start();
      final response = await _client.getDataEnterprise(request, options: Config.getCallOptions(Config.token));
      stopwatch.stop();
      Config.printDebug('GetDataEnterprise - Tiempo transcurrido: ${stopwatch.elapsedMilliseconds} ms');
      return Either.right(response);
    } catch (e) {
      Config.talker.error('FAIL_CONECCTION', e);
      return Either.left(ErrorModel('FAIL_CONECCTION', 'Se interrumpió la conexión con el servidor'));
    }
  }
}
