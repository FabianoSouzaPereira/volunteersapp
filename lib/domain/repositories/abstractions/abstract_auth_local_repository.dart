import 'package:volunteersapp/data/models/authentication/authtoken.dart';

abstract class AuthLocalRepository {
  Future<AuthToken?> readAuthToken();
  Future<void> saveAuthToken(AuthToken token);
  Future<void> deleteAuthToken();
}
