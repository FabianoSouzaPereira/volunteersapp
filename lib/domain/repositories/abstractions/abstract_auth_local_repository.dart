import 'package:volunteersapp/data/models/authentication/authtoken.dart';

abstract class AbstractAuthLocalRepository {
  Future<AuthToken?> readAuthToken();
  Future<void> saveAuthToken(AuthToken token);
  Future<void> deleteAuthToken();
}
