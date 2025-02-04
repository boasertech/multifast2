import 'package:fpdart/fpdart.dart';
import 'package:multifast/core/config.dart';
import 'package:multifast/src/generated/qproduct_detail.pbgrpc.dart';
import 'package:multifast/src/models/error_model.dart';
import 'package:multifast/src/services/abs_qproduct_detail_service.dart';

class QProductDetailGrpcService extends AbsQProductDetailService {
  final QProductDetailServiceClient _client = QProductDetailServiceClient(Config.getConnectionGrpc());

  @override
  Future<Either<ErrorModel, QProductDetailResponse>> getQProductDetail(QProductDetailRequest request) async {
    try {
      final response = await _client.getQProductDetail(request);
      if (response.hasQproductDetailResponse()) {
        return Either.right(response.qproductDetailResponse);
      }
      Config.talker.error(response.error.code, response.error.message);
      return Either.left(ErrorModel.setError(response.error));
    } catch (e) {
      Config.talker.error('FAIL_CONECCTION', e);
      return Either.left(ErrorModel('FAIL_CONECCTION', 'Se interrumpió la conexión con el servidor'));
    }
  }
}
