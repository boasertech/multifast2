import 'package:fpdart/fpdart.dart';
import 'package:multifast/core/config.dart';
import 'package:multifast/src/generated/quotation.pbgrpc.dart';
import 'package:multifast/src/models/error_model.dart';
import 'package:multifast/src/services/abs_quotation_service.dart';

class QuotationGrpcService extends AbsQuotationService {
  final QuotationServiceClient _client = QuotationServiceClient(Config.getConnectionGrpc());

  @override
  Future<Either<ErrorModel, QuotationResponse>> registerQuotation(QuotationRequest request) async {
    try {
      final stopwatch = Stopwatch()..start();
      final response = await _client.registerQuotation(request, options: Config.getCallOptions(Config.token));
      stopwatch.stop();
      Config.printDebug('ConsultDocument - Tiempo transcurrido: ${stopwatch.elapsedMilliseconds} ms');
      if (response.hasQuotationResponse()) {
        return Either.right(response.quotationResponse);
      }
      Config.talker.error(response.error.code, response.error.message);
      return Either.left(ErrorModel.setError(response.error));
    } catch (e) {
      Config.talker.error('FAIL_CONECCTION', e);
      return Either.left(ErrorModel('FAIL_CONECCTION', 'Se interrumpió la conexión con el servidor'));
    }
  }
}
