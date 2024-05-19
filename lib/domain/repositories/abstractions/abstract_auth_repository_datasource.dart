import 'package:volunteersapp/data/models/authentication/auth_signIn_with_password_model/signin_with_password_Model.dart';
import 'package:volunteersapp/data/models/authentication/auth_signup_with_email_password/signup_with_email_and_password.dart';
import 'package:volunteersapp/domain/repositories/response_data.dart';

abstract class AbastractAuthRepositoryDataSource {
  Future<ResponseData<SignUpWithEmailAndPassword>?> signUp(String email, String password, bool returnSecureToken);

  Future<ResponseData<SignInWithPasswordResponseModel>?> signInWithEmailAndPassword(String email, String password, bool returnSecureToken);

  Future<void> signOut();
  // Outros métodos de autenticação, se necessário
}
