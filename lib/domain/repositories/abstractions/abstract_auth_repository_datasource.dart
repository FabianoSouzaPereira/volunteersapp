import 'package:volunteersapp/data/models/authentication/auth_SignIn_With_Password_Model/response/signin_with_password_Model.dart';
import 'package:volunteersapp/domain/repositories/response_data.dart';

abstract class AbastractAuthRepositoryDataSource {
  Future<ResponseData<SignInWithPasswordResponseModel>?> signInWithEmailAndPassword(
      String email, String password, bool returnSecureToken);

  Future<void> signOut();
  // Outros métodos de autenticação, se necessário
}
