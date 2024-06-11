import 'package:volunteersapp/core/http/abstract_http_client.dart';
import 'package:volunteersapp/data/models/authentication/auth_signIn_with_password_model/signin_with_password_Model.dart';
import 'package:volunteersapp/data/models/authentication/auth_login_model.dart';
import 'package:volunteersapp/data/models/authentication/auth_signup_with_email_password/signup_with_email_and_password.dart';
import 'package:volunteersapp/domain/abstract_repositories/response_data.dart';

abstract class AbstractAuthRepository {
  AbstractAuthRepository(AbstractHttpClient client);

  Future<ResponseData<SignUpWithEmailAndPassword>> signUp(String email, String password, bool returnSecureToken);

  Future<ResponseData<AuthLoginModel>> getlogin(String email, String password);

  Future<ResponseData<SignInWithPasswordResponseModel>> signInWithEmailAndPassword(String email, String password, bool returnSecureToken);
}
