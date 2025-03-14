import 'package:fpdart/fpdart.dart';
import 'package:multifast/src/generated/quotation.pb.dart';
import 'package:multifast/src/models/error_model.dart';

abstract class AbsQuotationService {
  Future<Either<ErrorModel, QuotationResponse>> registerQuotation(QuotationRequest request);
}
