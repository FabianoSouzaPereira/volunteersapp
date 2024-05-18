import 'package:volunteersapp/data/models/authentication/auth_SignIn_With_Password_Model/response/signin_with_password_Model.dart';
import 'package:volunteersapp/data/models/authentication/auth_login_model.dart';
import 'package:volunteersapp/domain/repositories/abstractions/abstract_auth_repository.dart';
import 'package:volunteersapp/domain/repositories/response_data.dart';

class AuthUseCase implements AbstractAuthRepository {
  final AbstractAuthRepository repository;

  AuthUseCase(this.repository);

  Future<bool> execute(String email, String password, bool returnSecureToken) async {
    try {
      final success = await repository.signInWithEmailAndPassword(email, password, returnSecureToken);
      return success.data?.email != null;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ResponseData<AuthLoginModel>> getlogin(String email, String password) {
    // TODO: implement getlogin
    throw UnimplementedError();
  }

  @override
  Future<ResponseData<SignInWithPasswordResponseModel>> signInWithEmailAndPassword(String email, String password, bool returnSecureToken) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }
}
