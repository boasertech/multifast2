import 'package:fpdart/fpdart.dart';
import 'package:multifast/src/models/error_model.dart';
import 'package:multifast/src/generated/qproducts.pb.dart';

abstract class AbsQProductService {
  Future<Either<ErrorModel, List<QProduct>>> getProducts(QProductRequest request);
}
