import 'package:volunteersapp/data/models/authentication/auth_signIn_with_password_model/signin_with_password_Model.dart';
import 'package:volunteersapp/data/models/authentication/auth_login_model.dart';
import 'package:volunteersapp/data/models/authentication/auth_signup_with_email_password/signup_with_email_and_password.dart';
import 'package:volunteersapp/domain/repositories/abstractions/abstract_auth_repository.dart';
import 'package:volunteersapp/domain/repositories/abstractions/abstract_auth_repository_datasource.dart';
import 'package:volunteersapp/domain/repositories/response_data.dart';

class AuthRepositoryImpl implements AbstractAuthRepository {
  final AbastractAuthRepositoryDataSource service;

  AuthRepositoryImpl(this.service);

  @override
  Future<ResponseData<SignUpWithEmailAndPassword>> signUp(String email, String password, bool returnSecureToken) async {
    try {
      final response = await service.signUp(email, password, returnSecureToken);

      if (response != null) {
        return ResponseData<SignUpWithEmailAndPassword>(data: response.data, success: true);
      } else {
        return const ResponseData<SignUpWithEmailAndPassword>(data: null, success: false);
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ResponseData<SignInWithPasswordResponseModel>> signInWithEmailAndPassword(String email, String password, bool returnSecureToken) async {
    try {
      final response = await service.signInWithEmailAndPassword(email, password, returnSecureToken);

      if (response != null) {
        return ResponseData<SignInWithPasswordResponseModel>(data: response.data, success: true);
      } else {
        return const ResponseData<SignInWithPasswordResponseModel>(data: null, success: false);
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ResponseData<AuthLoginModel>> getlogin(String email, String password) {
    // TODO: implement getlogin
    throw UnimplementedError();
  }
}
