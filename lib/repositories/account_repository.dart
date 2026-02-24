import 'package:dio/dio.dart';

class AccountRepository {
  final Dio _dio;
  AccountRepository(this._dio);

  Future<Map<String, dynamic>> getProfile() async {
    final response = await _dio.get('/api/account');
    return response.data;
  }

  Future<Map<String, dynamic>> updateProfile({
    required String name,
    String? phone,
  }) async {
    final response = await _dio.put('/api/account', data: {
      'name': name,
      if (phone != null) 'phone': phone,
    });
    return response.data;
  }
}
