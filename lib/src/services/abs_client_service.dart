import 'package:fpdart/fpdart.dart';
import 'package:multifast/src/generated/client.pbgrpc.dart';
import 'package:multifast/src/models/error_model.dart';

abstract class AbsClientService {
  Future<Either<ErrorModel, DocumentResponse>> consultDocument(DocumentRequest request);
}
