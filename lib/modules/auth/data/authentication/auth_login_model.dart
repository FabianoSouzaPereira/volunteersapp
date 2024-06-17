import 'package:json_annotation/json_annotation.dart';
import 'package:volunteersapp/modules/auth/domain/entities/auth_login_entity.dart';

@JsonSerializable()
class AuthLoginModel {
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'returnSecureToken')
  final bool returnSecureToken;

  AuthLoginModel({
    required this.email,
    required this.password,
    required this.returnSecureToken,
  });

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
