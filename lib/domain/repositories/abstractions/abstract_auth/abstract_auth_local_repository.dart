import 'package:volunteersapp/data/models/authentication/auth_signIn_with_password_model/signin_with_password_Model.dart';
import 'package:volunteersapp/data/models/authentication/auth_signup_with_email_password/signup_with_email_and_password.dart';

abstract class AbstractAuthLocalRepository {
  Future<SignInWithPasswordResponseModel?> readAuthToken();
  Future<void> saveAuthToken(SignUpWithEmailAndPassword token);
  Future<void> saveAuthTokenlocal(SignInWithPasswordResponseModel token);
  Future<void> deleteAuthToken();
}
