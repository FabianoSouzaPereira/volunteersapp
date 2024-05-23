import 'dart:ffi';

import 'package:volunteersapp/data/models/authentication/auth_signIn_with_password_model/signin_with_password_Model.dart';
import 'package:volunteersapp/data/models/authentication/auth_signup_with_email_password/signup_with_email_and_password.dart';
import 'package:volunteersapp/domain/repositories/abstractions/abstract_auth/abstract_auth_local_repository.dart';
import 'package:volunteersapp/domain/repositories/abstractions/abstract_auth/abstract_auth_repository.dart';
import 'package:volunteersapp/domain/repositories/abstractions/abstract_auth/abstract_auth_usecase.dart';
import 'package:volunteersapp/domain/repositories/response_data.dart';

class AuthUseCase implements AbstractAuthUseCase {
  final AbstractAuthRepository repository;
  final AbstractAuthLocalRepository localRepository;

  AuthUseCase({
    required this.repository,
    required this.localRepository,
  });

  @override
  Future<ResponseData<SignUpWithEmailAndPassword>> signUp(String email, String password, bool returnSecureToken) async {
    try {
      final response = await repository.signUp(email, password, returnSecureToken);
      if (response.statusCode == 201) {
        await localRepository
            .saveAuthToken(
              SignUpWithEmailAndPassword(
                kind: response.data?.kind ?? response.data!.kind,
                idToken: response.data?.idToken ?? response.data!.idToken,
                email: response.data?.email ?? response.data!.email,
                refreshToken: response.data?.refreshToken ?? response.data!.refreshToken,
                expiresIn: response.data?.expiresIn ?? response.data!.expiresIn,
                localId: response.data?.localId ?? response.data!.localId,
              ),
            )
            .then((_) {})
            .catchError((error) {
          print("Error on save local: $error");
        });
      }

      return ResponseData(data: response.data);
    } catch (e) {
      return ResponseData(error: true, errorMessage: e.toString());
    }
  }

  @override
  Future<ResponseData<SignInWithPasswordResponseModel>> signInWithEmailAndPassword(String email, String password, bool returnSecureToken) async {
    try {
      final response = await repository.signInWithEmailAndPassword(email, password, returnSecureToken);

      if (response.statusCode?.name == "ok") {
        localRepository
            .saveAuthTokenlocal(
          SignInWithPasswordResponseModel(
            kind: response.data?.kind ?? "",
            idToken: response.data?.idToken ?? "",
            email: response.data?.email ?? "",
            displayName: response.data?.displayName ?? "",
            registered: response.data?.registered ?? false,
            refreshToken: response.data?.refreshToken ?? "",
            expiresIn: response.data?.expiresIn ?? "",
          ),
        )
            .then((_) {
          print("SAVE DATA LOCAL");
        }).catchError((error) {
          print("Error on save local: $error");
        });
      }
      print("SIGN WITH EMAIL");
      return ResponseData(data: response.data);
    } catch (e) {
      return ResponseData(error: true, errorMessage: e.toString());
    }
  }
}
