import 'package:volunteersapp/core/http/abstract_http_client.dart';
import 'package:volunteersapp/data/models/authentication/auth_SignIn_With_Password_Model/response/signin_with_password_Model.dart';
import 'package:volunteersapp/data/models/authentication/auth_login_model.dart';
import 'package:volunteersapp/domain/repositories/response_data.dart';

abstract class AbstractAuthRepository {
  AbstractAuthRepository(AbstractHttpClient client);

  Future<ResponseData<AuthLoginModel>> getlogin(String email, String password);

  Future<ResponseData<SignInWithPasswordResponseModel>> signInWithEmailAndPassword(
      String email, String password, bool returnSecureToken);
}
