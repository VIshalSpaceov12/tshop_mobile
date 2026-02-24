import 'package:dio/dio.dart';
import 'token_storage.dart';

class AuthInterceptor extends Interceptor {
  final TokenStorage _tokenStorage;
  final Dio _dio; // Separate Dio instance for refresh to avoid interceptor loop

  AuthInterceptor(this._tokenStorage, this._dio);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = _tokenStorage.token;
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401 && _tokenStorage.refreshToken != null) {
      try {
        final response = await _dio.post(
          '/api/mobile/auth/refresh',
          data: {'refreshToken': _tokenStorage.refreshToken},
        );

        final newToken = response.data['token'] as String;
        await _tokenStorage.saveToken(newToken);

        // Retry the original request with the new token
        final options = err.requestOptions;
        options.headers['Authorization'] = 'Bearer $newToken';
        final retryResponse = await _dio.fetch(options);
        return handler.resolve(retryResponse);
      } catch (_) {
        await _tokenStorage.clear();
      }
    }
    handler.next(err);
  }
}
