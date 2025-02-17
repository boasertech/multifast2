import 'package:fpdart/fpdart.dart';
import 'package:grpc/grpc.dart';
import 'package:multifast/core/config.dart';
import 'package:multifast/src/generated/qproducts.pbgrpc.dart';
import 'package:multifast/src/models/error_model.dart';
import 'package:multifast/src/services/abs_qproduct_service.dart';

class QProductGrpcService extends AbsQProductService {
  final QProductServiceClient _client = QProductServiceClient(Config.getConnectionGrpc());

  @override
  Future<Either<ErrorModel, List<QProduct>>> getProducts(QProductRequest request) async {
    try {
      final stopwatch = Stopwatch()..start();
      final response = await _client.getQProducts(request, options: CallOptions(compression: GzipCodec()));
      stopwatch.stop();
      Config.printDebug('GetQProducts - Tiempo transcurrido: ${stopwatch.elapsedMilliseconds} ms');
      if (response.hasListQProductsResponse()) {
        return Either.right(response.listQProductsResponse.products);
      }
      Config.talker.error(response.error.code, response.error.message);
      return Either.left(ErrorModel.setError(response.error));
    } catch (e) {
      Config.talker.error('FAIL_CONECCTION', e);
      return Either.left(ErrorModel('FAIL_CONECCTION', 'Se interrumpió la conexión con el servidor'));
    }
  }
}
