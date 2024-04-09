import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalRepository {
  static const String _tokenKey = 'auth_token';

  final SharedPreferences _preferences;

  AuthLocalRepository(this._preferences);

  Future<String?> readAuthToken() async {
    return _preferences.getString(_tokenKey);
  }

  Future<void> saveAuthToken(String token) async {
    await _preferences.setString(_tokenKey, token);
  }

  Future<void> deleteAuthToken() async {
    await _preferences.remove(_tokenKey);
  }
}
