import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../config.dart';
import 'auth_interceptor.dart';
import 'token_storage.dart';

class DioClient {
  late final Dio dio;
  late final Dio _refreshDio;

  DioClient(TokenStorage tokenStorage) {
    _refreshDio = Dio(BaseOptions(
      baseUrl: AppConfig.apiUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {'Content-Type': 'application/json'},
    ));

    dio = Dio(BaseOptions(
      baseUrl: AppConfig.apiUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {'Content-Type': 'application/json'},
    ));

    dio.interceptors.add(AuthInterceptor(tokenStorage, _refreshDio));

    if (kDebugMode) {
      dio.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: (obj) => debugPrint(obj.toString()),
      ));
    }
  }
}
