/* Confirmar redefinição de senha
* Você pode aplicar uma alteração de redefinição de senha emitindo uma solicitação HTTP POST para o endpoint Auth resetPassword .
* 
* Método: POSTAR
* https://identitytoolkit.googleapis.com/v1/accounts:resetPassword?key=[API_KEY]
* Tipo de conteúdo: application/json 
*/

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

AuthResetPasswordConfirmation authResetPasswordConfirmationFromJson(String str) => AuthResetPasswordConfirmation.fromJson(json.decode(str));

String authResetPasswordConfirmationToJson(AuthResetPasswordConfirmation data) => json.encode(data.toJson());

@JsonSerializable()
class AuthResetPasswordConfirmation {
  @JsonKey(name: "oobCode")
  final String oobCode;
  @JsonKey(name: "newPassword")
  final String newPassword;

  AuthResetPasswordConfirmation({
    required this.oobCode,
    required this.newPassword,
  });

  AuthResetPasswordConfirmation copyWith({
    String? oobCode,
    String? newPassword,
  }) =>
      AuthResetPasswordConfirmation(
        oobCode: oobCode ?? this.oobCode,
        newPassword: newPassword ?? this.newPassword,
      );

  factory AuthResetPasswordConfirmation.fromJson(Map<String, dynamic> json) => AuthResetPasswordConfirmation(
        oobCode: json["oobCode"],
        newPassword: json["newPassword"],
      );

  Map<String, dynamic> toJson() => {
        "oobCode": oobCode,
        "newPassword": newPassword,
      };
}
