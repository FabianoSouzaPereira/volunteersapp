import 'dart:ffi';
import 'package:volunteersapp/domain/entities/auth_login_entity.dart';

class AuthLoginModel {
  final String email;
  final String password;
  final bool returnSecureToken;

  AuthLoginModel(
      {required this.email,
      required this.password,
      required this.returnSecureToken});

  static fromJson(data) {}
}

/* Adding the ability to convert to UserEntity */
extension AuthLoginModelX on AuthLoginModel {
  AuthLoginEntity toEntity() {
    return AuthLoginEntity(
      email: email,
      password: password,
      returnSecureToken: returnSecureToken,
    );
  }
}
