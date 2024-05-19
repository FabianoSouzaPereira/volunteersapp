// To parse this JSON data, do
//
//     final signUpWithEmailAndPassword = signUpWithEmailAndPasswordFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

SignUpWithEmailAndPassword signUpWithEmailAndPasswordFromJson(String str) => SignUpWithEmailAndPassword.fromJson(json.decode(str));

String signUpWithEmailAndPasswordToJson(SignUpWithEmailAndPassword data) => json.encode(data.toJson());

@JsonSerializable()
class SignUpWithEmailAndPassword {
  @JsonKey(name: 'kind')
  final String kind;
  @JsonKey(name: 'idToken')
  final String idToken;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'refreshToken')
  final String refreshToken;
  @JsonKey(name: 'expiresIn')
  final String expiresIn;
  @JsonKey(name: 'localId')
  final String localId;

  SignUpWithEmailAndPassword({
    required this.kind,
    required this.idToken,
    required this.email,
    required this.refreshToken,
    required this.expiresIn,
    required this.localId,
  });

  SignUpWithEmailAndPassword copyWith({
    String? kind,
    String? idToken,
    String? email,
    String? refreshToken,
    String? expiresIn,
    String? localId,
  }) =>
      SignUpWithEmailAndPassword(
        kind: kind ?? this.kind,
        idToken: idToken ?? this.idToken,
        email: email ?? this.email,
        refreshToken: refreshToken ?? this.refreshToken,
        expiresIn: expiresIn ?? this.expiresIn,
        localId: localId ?? this.localId,
      );

  factory SignUpWithEmailAndPassword.fromJson(Map<String, dynamic> json) => SignUpWithEmailAndPassword(
        kind: json["kind"],
        idToken: json["idToken"],
        email: json["email"],
        refreshToken: json["refreshToken"],
        expiresIn: json["expiresIn"],
        localId: json["localId"],
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "idToken": idToken,
        "email": email,
        "refreshToken": refreshToken,
        "expiresIn": expiresIn,
        "localId": localId,
      };
}
