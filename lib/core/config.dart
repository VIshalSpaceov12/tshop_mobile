class AppConfig {
  static const String baseUrl = 'http://10.0.2.2:3000'; // Android emulator -> host
  static const String baseUrlIos = 'http://localhost:3000'; // iOS simulator
  static const String baseImageUrl = baseUrl;

  static String get apiUrl {
    return baseUrl;
  }
}
