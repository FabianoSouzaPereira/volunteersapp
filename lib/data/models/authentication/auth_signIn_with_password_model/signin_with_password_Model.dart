import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:volunteersapp/data/models/authentication/auth_accounts_signin_with_password/MfaEnrollment.dart';
import 'package:volunteersapp/data/models/authentication/auth_accounts_signin_with_password/SignInWithPasswordResponseModelNotification.dart';

SignInWithPasswordResponseModel signInWithPasswordResponseModelFromJson(String str) => SignInWithPasswordResponseModel.fromJson(json.decode(str));

String signInWithPasswordResponseModelToJson(SignInWithPasswordResponseModel data) => json.encode(data.toJson());

class SignInWithPasswordResponseModel extends Equatable {
  final String kind;
  final String localId;
  final String email;
  final String displayName;
  final bool registered;
  final String refreshToken;
  final String expiresIn;

  const SignInWithPasswordResponseModel({
    required this.kind,
    required this.localId,
    required this.email,
    required this.displayName,
    required this.registered,
    required this.refreshToken,
    required this.expiresIn,
  });

  factory SignInWithPasswordResponseModel.fromJson(Map<String, dynamic> json) => SignInWithPasswordResponseModel(
        kind: json['kind'],
        localId: json['localId'],
        email: json['email'],
        displayName: json['displayName'],
        registered: json['registered'],
        refreshToken: json['refreshToken'],
        expiresIn: json['expiresIn'],
      );

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'localId': localId,
        'email': email,
        'displayName': displayName,
        'registered': registered,
        'refreshToken': refreshToken,
        'expiresIn': expiresIn,
      };

  @override
  List<Object> get props => [
        kind,
        localId,
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
    String? localId,
    String? email,
    String? displayName,
    String? idToken,
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
      localId: localId ?? this.localId,
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
        o.localId == localId &&
        o.email == email &&
        o.displayName == displayName &&
        o.registered == registered &&
        o.refreshToken == refreshToken &&
        o.expiresIn == expiresIn;
  }

  @override
  int get hashCode {
    return kind.hashCode ^ localId.hashCode ^ email.hashCode ^ displayName.hashCode ^ registered.hashCode ^ refreshToken.hashCode ^ expiresIn.hashCode;
  }

  @override
  String toString() {
    return 'SignInWithPasswordResponseModel{kind: $kind, localId: $localId, email: $email, displayName: $displayName, registered: $registered, refreshToken: $refreshToken, expiresIn: $expiresIn}';
  }
}

void main() {
  // Teste
  final signInWithPasswordResponse = SignInWithPasswordResponseModel(
    kind: "",
    localId: "",
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
