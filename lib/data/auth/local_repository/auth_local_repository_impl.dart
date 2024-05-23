import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:volunteersapp/data/models/authentication/auth_signIn_with_password_model/signin_with_password_Model.dart';
import 'package:volunteersapp/data/models/authentication/auth_signup_with_email_password/signup_with_email_and_password.dart';
import 'package:volunteersapp/domain/repositories/abstractions/abstract_auth/abstract_auth_local_repository.dart';

class AuthLocalRepositoryImpl implements AbstractAuthLocalRepository {
  final SharedPreferences _preferences;

  static const String _tokenKey = 'auth_token';

  AuthLocalRepositoryImpl(this._preferences);

  @override
  Future<SignInWithPasswordResponseModel?> readAuthToken() async {
    try {
      final String? tokenMaps = _preferences.getString(_tokenKey);
      if (tokenMaps != null) {
        final Map<String, dynamic> tokenMap = jsonDecode(tokenMaps);
        return SignInWithPasswordResponseModel.fromMap(tokenMap);
      }
    } catch (e) {
      rethrow;
    }
    return null;
  }

  @override
  Future<void> saveAuthToken(SignUpWithEmailAndPassword token) async {
    try {
      final Map<String, dynamic> tokenMaps = token.toMap();
      final String tokenMap = jsonEncode(tokenMaps);
      await _preferences.setString(_tokenKey, tokenMap);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteAuthToken() async {
    try {
      await _preferences.remove(_tokenKey);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> saveAuthTokenlocal(SignInWithPasswordResponseModel token) async {
    try {
      final Map<String, dynamic> tokenMaps = token.toMap();
      final String tokenMap = jsonEncode(tokenMaps);
      await _preferences.setString(_tokenKey, tokenMap);
    } catch (e) {
      rethrow;
    }
  }
}
