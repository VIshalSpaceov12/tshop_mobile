import 'package:dio/dio.dart';
import '../models/user.dart';

class AuthRepository {
  final Dio _dio;

  AuthRepository(this._dio);

  Future<AuthResponse> login({
    required String email,
    required String password,
  }) async {
    final response = await _dio.post('/api/mobile/auth/login', data: {
      'email': email,
      'password': password,
    });
    return AuthResponse.fromJson(response.data);
  }

  Future<AuthResponse> register({
    required String name,
    required String email,
    required String password,
  }) async {
    final response = await _dio.post('/api/mobile/auth/register', data: {
      'name': name,
      'email': email,
      'password': password,
    });
    return AuthResponse.fromJson(response.data);
  }

  Future<User> getAccount() async {
    final response = await _dio.get('/api/account');
    return User.fromJson(response.data);
  }
}
