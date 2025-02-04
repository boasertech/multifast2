import 'package:fpdart/fpdart.dart';
import 'package:multifast/src/generated/qproduct_detail.pb.dart';
import 'package:multifast/src/models/error_model.dart';

abstract class AbsQProductDetailService {
  Future<Either<ErrorModel, QProductDetailResponse>> getQProductDetail(QProductDetailRequest request);
}
