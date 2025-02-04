import 'package:multifast/src/generated/error.pb.dart' as $e;

class ErrorModel {
  String code;
  String message;
  Map<String, String>? details;

  ErrorModel(this.code, this.message, {this.details});

  static ErrorModel setError($e.Error error) {
    return ErrorModel(error.code, error.message, details: error.details);
  }
}
