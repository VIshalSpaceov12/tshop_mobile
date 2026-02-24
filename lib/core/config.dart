import 'package:flutter/foundation.dart';

class AppConfig {
  static const String _androidEmulatorUrl = 'http://10.0.2.2:3000';
  static const String _localUrl = 'http://localhost:3000';

  static String get apiUrl {
    // Android emulator uses 10.0.2.2 to reach host machine
    // iOS simulator, web, and desktop use localhost
    if (defaultTargetPlatform == TargetPlatform.android && !kIsWeb) {
      return _androidEmulatorUrl;
    }
    return _localUrl;
  }

  static String get baseImageUrl => apiUrl;
}
