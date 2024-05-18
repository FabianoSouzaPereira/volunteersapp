import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:volunteersapp/data/models/authentication/authtoken.dart';
import 'package:volunteersapp/domain/repositories/abstractions/abstract_auth_local_repository.dart';

class AuthLocalRepositoryImpl implements AbstractAuthLocalRepository {
  final SharedPreferences _preferences;

  static const String _tokenKey = 'auth_token';

  AuthLocalRepositoryImpl(this._preferences);

  @override
  Future<AuthToken?> readAuthToken() async {
    final String? tokenMaps = _preferences.getString(_tokenKey);
    if (tokenMaps != null) {
      final Map<String, dynamic> tokenMap = jsonDecode(tokenMaps);
      return AuthToken.fromMap(tokenMap);
    }
    return null;
  }

  @override
  Future<void> saveAuthToken(AuthToken token) async {
    final Map<String, dynamic> tokenMaps = token.toMap();
    final String tokenMap = jsonEncode(tokenMaps);
    await _preferences.setString(_tokenKey, tokenMap);
  }

  @override
  Future<void> deleteAuthToken() async {
    await _preferences.remove(_tokenKey);
  }
}
