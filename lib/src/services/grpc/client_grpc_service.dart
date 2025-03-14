import 'package:fpdart/fpdart.dart';
import 'package:multifast/core/config.dart';
import 'package:multifast/src/generated/client.pbgrpc.dart';
import 'package:multifast/src/models/error_model.dart';
import 'package:multifast/src/services/abs_client_service.dart';

class ClientGrpcService extends AbsClientService {
  final ClientServiceClient _client = ClientServiceClient(Config.getConnectionGrpc());

  @override
  Future<Either<ErrorModel, DocumentResponse>> consultDocument(DocumentRequest request) async {
    try {
      final stopwatch = Stopwatch()..start();
      final response = await _client.consultDocument(request, options: Config.getCallOptions(Config.token));
      stopwatch.stop();
      Config.printDebug('ConsultDocument - Tiempo transcurrido: ${stopwatch.elapsedMilliseconds} ms');
      if (response.hasDocumentResponse()) {
        return Either.right(response.documentResponse);
      }
      Config.talker.error(response.error.code, response.error.message);
      return Either.left(ErrorModel.setError(response.error));
    } catch (e) {
      Config.talker.error('FAIL_CONECCTION', e);
      return Either.left(ErrorModel('FAIL_CONECCTION', 'Se interrumpió la conexión con el servidor'));
    }
  }
}
