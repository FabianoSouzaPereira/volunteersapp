/* Buscar provedores para e-mail
*  Você pode consultar todos os provedores associados a um e-mail especificado emitindo uma solicitação HTTP POST para o endpoint Auth createAuthUri .
* 
*  Método: POSTAR
*  https://identitytoolkit.googleapis.com/v1/accounts:createAuthUri?key=[API_KEY]
*  Tipo de conteúdo: application/json 
*/

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

CreateAuthUri createAuthUriFromJson(String str) => CreateAuthUri.fromJson(json.decode(str));

String createAuthUriToJson(CreateAuthUri data) => json.encode(data.toJson());

@JsonSerializable()
class CreateAuthUri {
  @JsonKey(name: "identifier")
  final String identifier;
  @JsonKey(name: "continueUri")
  final String continueUri;

  CreateAuthUri({
    required this.identifier,
    required this.continueUri,
  });

  CreateAuthUri copyWith({
    String? identifier,
    String? continueUri,
  }) =>
      CreateAuthUri(
        identifier: identifier ?? this.identifier,
        continueUri: continueUri ?? this.continueUri,
      );

  factory CreateAuthUri.fromJson(Map<String, dynamic> json) => CreateAuthUri(
        identifier: json["identifier"],
        continueUri: json["continueUri"],
      );

  Map<String, dynamic> toJson() => {
        "identifier": identifier,
        "continueUri": continueUri,
      };
}
