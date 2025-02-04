import 'package:fpdart/fpdart.dart';
import 'package:multifast/core/config.dart';
import 'package:multifast/src/generated/quotation.pbgrpc.dart';
import 'package:multifast/src/models/error_model.dart';

class QuotationService {
  final QuotationServiceClient _client = QuotationServiceClient(Config.getConnectionGrpc());
  static final QuotationService _instance = QuotationService._internal();
  QuotationService._internal();
  static QuotationService get instance => _instance;
  factory QuotationService() {
    return _instance;
  }

  Future<Either<ErrorModel, QuotationResponse>> registerQuotation(QuotationRequest request) async {
    try {
      final response = await _client.registerQuotation(request);
      if (response.hasQuotationResponse()) {
        return Either.right(response.quotationResponse);
      }
      Config.talker.error(response.error.code, response.error.message);
      return Either.left(ErrorModel.setError(response.error));
    } catch (e) {
      return Either.left(ErrorModel('FAIL_CONECCTION', 'Se interrumpió la conexión con el servidor'));
    }
  }
}
