import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:multifast/core/config.dart';
import 'package:multifast/src/generated/qproducts.pb.dart';
import 'package:multifast/src/models/error_model.dart';
import 'package:multifast/src/services/abs_qproduct_service.dart';

class QProductRestService extends AbsQProductService {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'http://192.168.1.31:5000'));

  static final QProductRestService _instance = QProductRestService._internal();
  QProductRestService._internal();
  static QProductRestService get instance => _instance;

  factory QProductRestService() {
    return _instance;
  }

  @override
  Future<Either<ErrorModel, List<QProduct>>> getProducts(QProductRequest request) async {
    try {
      final response = await _dio.get('/qproduct/list', queryParameters: {
        'companyRuc': request.companyRuc,
      });

      if (response.statusCode == 200) {
        final productsJson = response.data as List;
        final products =
            productsJson.map((json) => QProductExtensions.fromJsonMap(json as Map<String, dynamic>)).toList();
        return Either.right(products);
      } else {
        return Either.left(ErrorModel('REST_CONNECTION', 'Ocurrió un problema en la conexión REST'));
      }
    } catch (e) {
      Config.talker.error('FAIL_CONECCTION', e);
      return Either.left(ErrorModel('FAIL_CONECCTION', 'Se interrumpió la conexión con el servidor'));
    }
  }
}

extension QProductExtensions on QProduct {
  static QProduct fromJsonMap(Map<String, dynamic> jsonMap) {
    final jsonString = jsonEncode(jsonMap);
    final qProduct = QProduct()..mergeFromJson(jsonString);
    return qProduct;
  }
}
