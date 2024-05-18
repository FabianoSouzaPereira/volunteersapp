import 'package:volunteersapp/domain/repositories/response_data.dart';
import 'package:volunteersapp/data/models/authentication/auth_signIn_with_password_model/signin_with_password_Model.dart';

abstract class AbstractAuthUseCase {
  Future<ResponseData<SignInWithPasswordResponseModel>> signInWithEmailAndPassword(String email, String password, bool returnSecureToken);
}
