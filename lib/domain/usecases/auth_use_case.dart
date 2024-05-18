import 'dart:ffi';

import 'package:volunteersapp/data/models/authentication/auth_signIn_with_password_model/signin_with_password_Model.dart';
import 'package:volunteersapp/domain/repositories/abstractions/abstract_auth_repository.dart';
import 'package:volunteersapp/domain/repositories/abstractions/abstract_auth_usecase.dart';
import 'package:volunteersapp/domain/repositories/response_data.dart';

class AuthUseCase implements AbstractAuthUseCase {
  final AbstractAuthRepository repository;

  AuthUseCase(this.repository);

  @override
  Future<ResponseData<SignInWithPasswordResponseModel>> signInWithEmailAndPassword(String email, String password, bool returnSecureToken) async {
    try {
      final response = await repository.signInWithEmailAndPassword(email, password, returnSecureToken);

      return ResponseData(data: response.data);
    } catch (e) {
      return ResponseData(error: true, errorMessage: e.toString());
    }
  }
}
