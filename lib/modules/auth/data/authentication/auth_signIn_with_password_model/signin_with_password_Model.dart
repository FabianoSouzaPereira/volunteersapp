import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:volunteersapp/modules/auth/data/authentication/auth_accounts_signin_with_password/MfaEnrollment.dart';
import 'package:volunteersapp/modules/auth/data/authentication/auth_accounts_signin_with_password/SignInWithPasswordResponseModelNotification.dart';

//To save remote
SignInWithPasswordResponseModel signInWithPasswordResponseModelFromJson(String str) => SignInWithPasswordResponseModel.fromJson(json.decode(str));
String signInWithPasswordResponseModelToJson(SignInWithPasswordResponseModel data) => json.encode(data.toJson());

//To save local
SignInWithPasswordResponseModel signUpWithEmailAndPasswordFromMap(String str) => SignInWithPasswordResponseModel.fromMap(json.decode(str));
String signUpWithEmailAndPasswordToMap(SignInWithPasswordResponseModel data) => json.encode(data.toMap());

class SignInWithPasswordResponseModel extends Equatable {
  final String kind;
  final String idToken;
  final String email;
  final String displayName;
  final bool registered;
  final String refreshToken;
  final String expiresIn;

  const SignInWithPasswordResponseModel({
    required this.kind,
    required this.idToken,
    required this.email,
    required this.displayName,
    required this.registered,
    required this.refreshToken,
    required this.expiresIn,
  });

  factory SignInWithPasswordResponseModel.fromJson(Map<String, dynamic> json) => SignInWithPasswordResponseModel(
        kind: json['kind'],
        idToken: json['idToken'],
        email: json['email'],
        displayName: json['displayName'],
        registered: json['registered'],
        refreshToken: json['refreshToken'],
        expiresIn: json['expiresIn'],
      );

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'idToken': idToken,
        'email': email,
        'displayName': displayName,
        'registered': registered,
        'refreshToken': refreshToken,
        'expiresIn': expiresIn,
      };

  Map<String, dynamic> toMap() {
    return {
      'kind': kind,
      'idToken': idToken,
      'email': email,
      'displayName': displayName,
      'registered': registered,
      'refreshToken': refreshToken,
      'expiresIn': expiresIn,
    };
  }

  factory SignInWithPasswordResponseModel.fromMap(Map<String, dynamic> map) {
    return SignInWithPasswordResponseModel(
      kind: map['kind'],
      idToken: map['idToken'],
      email: map['email'],
      displayName: map['displayName'],
      registered: map['registered'],
      refreshToken: map['refreshToken'],
      expiresIn: map['expiresIn'],
    );
  }

  @override
  List<Object> get props => [
        kind,
        idToken,
        email,
        displayName,
        registered,
        refreshToken,
        expiresIn,
      ];

  @override
  bool get stringify => true;

  SignInWithPasswordResponseModel copyWith({
    String? kind,
    String? idToken,
    String? email,
    String? displayName,
    bool? registered,
    String? profilePicture,
    String? oauthAccessToken,
    int? oauthExpireIn,
    String? oauthAuthorizationCode,
    String? refreshToken,
    String? expiresIn,
    String? mfaPendingCredential,
    List<MfaEnrollment>? mfaInfo,
    List<SignInWithPasswordResponseModelNotification>? signInWithPasswordResponseModelNotifications,
  }) {
    return SignInWithPasswordResponseModel(
      kind: kind ?? this.kind,
      idToken: idToken ?? this.idToken,
      email: email ?? this.email,
      displayName: displayName ?? this.displayName,
      registered: registered ?? this.registered,
      refreshToken: refreshToken ?? this.refreshToken,
      expiresIn: expiresIn ?? this.expiresIn,
    );
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is SignInWithPasswordResponseModel &&
        o.kind == kind &&
        o.idToken == idToken &&
        o.email == email &&
        o.displayName == displayName &&
        o.registered == registered &&
        o.refreshToken == refreshToken &&
        o.expiresIn == expiresIn;
  }

  @override
  int get hashCode {
    return kind.hashCode ^ idToken.hashCode ^ email.hashCode ^ displayName.hashCode ^ registered.hashCode ^ refreshToken.hashCode ^ expiresIn.hashCode;
  }

  @override
  String toString() {
    return 'SignInWithPasswordResponseModel{kind: $kind, idToken: $idToken, email: $email, displayName: $displayName, registered: $registered, refreshToken: $refreshToken, expiresIn: $expiresIn}';
  }
}

void main() {
  // Teste
  final signInWithPasswordResponse = SignInWithPasswordResponseModel(
    kind: "",
    idToken: "",
    email: "",
    displayName: "",
    registered: true,
    refreshToken: "",
    expiresIn: "",
  );

  if (kDebugMode) {
    print(signInWithPasswordResponse.toString());
  }
}
