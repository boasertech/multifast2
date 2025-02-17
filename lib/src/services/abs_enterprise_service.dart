import 'package:fpdart/fpdart.dart';
import 'package:multifast/src/generated/enterprise.pb.dart';
import 'package:multifast/src/models/error_model.dart';

abstract class AbsEnterpriseService {
  Future<Either<ErrorModel, DataEnterpriseResponse>> getDataEnterprise(EnterpriseRequest request);
}
