import 'package:dio/dio.dart';
import 'package:multifast/core/config.dart';

class DioClient {
  static final Dio _dio = Dio(BaseOptions(
      baseUrl: Config.urlAPI,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
      headers: {
        'Content-Type': 'application/json',
      }));
      
  static Dio get instance => _dio;
}
