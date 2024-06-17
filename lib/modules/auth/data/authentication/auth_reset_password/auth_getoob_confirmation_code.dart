/* Enviar e-mail de redefinição de senha
*  Você pode enviar um email de redefinição de senha emitindo uma solicitação HTTP POST para o endpoint Auth getOobConfirmationCode .
*  Uma solicitação bem-sucedida é indicada por um código de status HTTP 200 OK . A resposta contém a lista de provedores associados ao email.
*  Método: POSTAR
*  https://identitytoolkit.googleapis.com/v1/accounts:sendOobCode?key=[API_KEY]
*  Tipo de conteúdo: application/json
*/

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

GetOobConfirmationCode getOobConfirmationCodeFromJson(String str) => GetOobConfirmationCode.fromJson(json.decode(str));

String getOobConfirmationCodeToJson(GetOobConfirmationCode data) => json.encode(data.toJson());

@JsonSerializable()
class GetOobConfirmationCode {
  @JsonKey(name: "requestType")
  final String requestType;
  @JsonKey(name: "email")
  final String email;
  GetOobConfirmationCode({
    required this.requestType,
    required this.email,
  });

  GetOobConfirmationCode copyWith({
    String? requestType,
    String? email,
  }) =>
      GetOobConfirmationCode(
        requestType: requestType ?? this.requestType,
        email: email ?? this.email,
      );

  factory GetOobConfirmationCode.fromJson(Map<String, dynamic> json) => GetOobConfirmationCode(
        requestType: json["requestType"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "requestType": requestType,
        "email": email,
      };
}
