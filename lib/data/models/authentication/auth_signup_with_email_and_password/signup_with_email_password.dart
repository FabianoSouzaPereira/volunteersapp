// To parse this JSON data, do
//
//     final signUpWithEmailAndPassword = signUpWithEmailAndPasswordFromJson(jsonString);

import 'dart:convert';

SignUpWithEmailAndPassword signUpWithEmailAndPasswordFromJson(String str) => SignUpWithEmailAndPassword.fromJson(json.decode(str));

String signUpWithEmailAndPasswordToJson(SignUpWithEmailAndPassword data) => json.encode(data.toJson());

class SignUpWithEmailAndPassword {
  final String idToken;
  final String email;
  final String refreshToken;
  final String expiresIn;
  final String localId;

  SignUpWithEmailAndPassword({
    required this.idToken,
    required this.email,
    required this.refreshToken,
    required this.expiresIn,
    required this.localId,
  });

  SignUpWithEmailAndPassword copyWith({
    String? idToken,
    String? email,
    String? refreshToken,
    String? expiresIn,
    String? localId,
  }) =>
      SignUpWithEmailAndPassword(
        idToken: idToken ?? this.idToken,
        email: email ?? this.email,
        refreshToken: refreshToken ?? this.refreshToken,
        expiresIn: expiresIn ?? this.expiresIn,
        localId: localId ?? this.localId,
      );

  factory SignUpWithEmailAndPassword.fromJson(Map<String, dynamic> json) => SignUpWithEmailAndPassword(
        idToken: json["idToken"],
        email: json["email"],
        refreshToken: json["refreshToken"],
        expiresIn: json["expiresIn"],
        localId: json["localId"],
      );

  Map<String, dynamic> toJson() => {
        "idToken": idToken,
        "email": email,
        "refreshToken": refreshToken,
        "expiresIn": expiresIn,
        "localId": localId,
      };
}
