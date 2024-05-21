// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:volunteersapp/data/models/authentication/auth_accounts_signin_with_password/EmailInfo.dart';
import 'package:volunteersapp/data/models/authentication/auth_accounts_signin_with_password/MfaEnrollment.dart';
import 'package:volunteersapp/data/models/authentication/auth_accounts_signin_with_password/SignInWithPasswordResponseModelNotification.dart';
import 'package:volunteersapp/data/models/authentication/auth_accounts_signin_with_password/TotpInfo.dart';

SignInWithPasswordResponseModel signInWithPasswordResponseModelFromJson(String str) => SignInWithPasswordResponseModel.fromJson(json.decode(str));

String signInWithPasswordResponseModelToJson(SignInWithPasswordResponseModel data) => json.encode(data.toJson());

class SignInWithPasswordResponseModel extends Equatable {
  final String kind;
  final String localId;
  final String email;
  final String displayName;
  final String idToken;
  final bool registered;
  final String profilePicture;
  final String oauthAccessToken;
  final int oauthExpireIn;
  final String oauthAuthorizationCode;
  final String refreshToken;
  final String expiresIn;
  final String mfaPendingCredential;
  final List<MfaEnrollment> mfaInfo;
  final List<SignInWithPasswordResponseModelNotification> signInWithPasswordResponseModelNotifications;

  const SignInWithPasswordResponseModel({
    required this.kind,
    required this.localId,
    required this.email,
    required this.displayName,
    required this.idToken,
    required this.registered,
    required this.profilePicture,
    required this.oauthAccessToken,
    required this.oauthExpireIn,
    required this.oauthAuthorizationCode,
    required this.refreshToken,
    required this.expiresIn,
    required this.mfaPendingCredential,
    required this.mfaInfo,
    required this.signInWithPasswordResponseModelNotifications,
  });

  factory SignInWithPasswordResponseModel.fromJson(Map<String, dynamic> json) => SignInWithPasswordResponseModel(
        kind: json['kind'],
        localId: json['localId'],
        email: json['email'],
        displayName: json['displayName'],
        idToken: json['idToken'],
        registered: json['registered'],
        profilePicture: json['profilePicture'],
        oauthAccessToken: json['oauthAccessToken'],
        oauthExpireIn: json['oauthExpireIn'],
        oauthAuthorizationCode: json['oauthAuthorizationCode'],
        refreshToken: json['refreshToken'],
        expiresIn: json['expiresIn'],
        mfaPendingCredential: json['mfaPendingCredential'],
        mfaInfo: List<MfaEnrollment>.from(json['mfaInfo'].map((x) => MfaEnrollment.fromJson(x))),
        signInWithPasswordResponseModelNotifications:
            List<SignInWithPasswordResponseModelNotification>.from(json['signInWithPasswordResponseModelNotifications'].map((x) => SignInWithPasswordResponseModelNotification.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'localId': localId,
        'email': email,
        'displayName': displayName,
        'idToken': idToken,
        'registered': registered,
        'profilePicture': profilePicture,
        'oauthAccessToken': oauthAccessToken,
        'oauthExpireIn': oauthExpireIn,
        'oauthAuthorizationCode': oauthAuthorizationCode,
        'refreshToken': refreshToken,
        'expiresIn': expiresIn,
        'mfaPendingCredential': mfaPendingCredential,
        'mfaInfo': List<dynamic>.from(mfaInfo.map((x) => x.toJson())),
        'signInWithPasswordResponseModelNotifications': List<dynamic>.from(signInWithPasswordResponseModelNotifications.map((x) => x.toJson())),
      };

  @override
  List<Object> get props => [
        kind,
        localId,
        email,
        displayName,
        idToken,
        registered,
        profilePicture,
        oauthAccessToken,
        oauthExpireIn,
        oauthAuthorizationCode,
        refreshToken,
        expiresIn,
        mfaPendingCredential,
        mfaInfo,
        signInWithPasswordResponseModelNotifications,
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
      idToken: idToken ?? this.idToken,
      registered: registered ?? this.registered,
      profilePicture: profilePicture ?? this.profilePicture,
      oauthAccessToken: oauthAccessToken ?? this.oauthAccessToken,
      oauthExpireIn: oauthExpireIn ?? this.oauthExpireIn,
      oauthAuthorizationCode: oauthAuthorizationCode ?? this.oauthAuthorizationCode,
      refreshToken: refreshToken ?? this.refreshToken,
      expiresIn: expiresIn ?? this.expiresIn,
      mfaPendingCredential: mfaPendingCredential ?? this.mfaPendingCredential,
      mfaInfo: mfaInfo ?? this.mfaInfo,
      signInWithPasswordResponseModelNotifications: signInWithPasswordResponseModelNotifications ?? this.signInWithPasswordResponseModelNotifications,
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
        o.idToken == idToken &&
        o.registered == registered &&
        o.profilePicture == profilePicture &&
        o.oauthAccessToken == oauthAccessToken &&
        o.oauthExpireIn == oauthExpireIn &&
        o.oauthAuthorizationCode == oauthAuthorizationCode &&
        o.refreshToken == refreshToken &&
        o.expiresIn == expiresIn &&
        o.mfaPendingCredential == mfaPendingCredential &&
        listEquals(o.mfaInfo, mfaInfo) &&
        listEquals(o.signInWithPasswordResponseModelNotifications, signInWithPasswordResponseModelNotifications);
  }

  @override
  int get hashCode {
    return kind.hashCode ^
        localId.hashCode ^
        email.hashCode ^
        displayName.hashCode ^
        idToken.hashCode ^
        registered.hashCode ^
        profilePicture.hashCode ^
        oauthAccessToken.hashCode ^
        oauthExpireIn.hashCode ^
        oauthAuthorizationCode.hashCode ^
        refreshToken.hashCode ^
        expiresIn.hashCode ^
        mfaPendingCredential.hashCode ^
        mfaInfo.hashCode ^
        signInWithPasswordResponseModelNotifications.hashCode;
  }

  @override
  String toString() {
    return 'SignInWithPasswordResponseModel{kind: $kind, localId: $localId, email: $email, displayName: $displayName, idToken: $idToken, registered: $registered, profilePicture: $profilePicture, oauthAccessToken: $oauthAccessToken, oauthExpireIn: $oauthExpireIn, oauthAuthorizationCode: $oauthAuthorizationCode, refreshToken: $refreshToken, expiresIn: $expiresIn, mfaPendingCredential: $mfaPendingCredential, mfaInfo: $mfaInfo, signInWithPasswordResponseModelNotifications: $signInWithPasswordResponseModelNotifications}';
  }
}

void main() {
  // Teste
  final signInWithPasswordResponse = SignInWithPasswordResponseModel(
    kind: "",
    localId: "",
    email: "",
    displayName: "",
    idToken: "",
    registered: true,
    profilePicture: "",
    oauthAccessToken: "",
    oauthExpireIn: 0,
    oauthAuthorizationCode: "",
    refreshToken: "",
    expiresIn: "",
    mfaPendingCredential: "",
    mfaInfo: [
      MfaEnrollment(
        mfaEnrollmentId: "",
        displayName: "",
        enrolledAt: "",
        phoneInfo: "",
        totpInfo: TotpInfo(),
        emailInfo: const EmailInfo(emailAddress: ""),
        unobfuscatedPhoneInfo: "",
      ),
    ],
    signInWithPasswordResponseModelNotifications: const [
      SignInWithPasswordResponseModelNotification(
        notificationCode: NotificationCode.NOTIFICATION_CODE_UNSPECIFIED,
        notificationMessage: "",
      ),
    ],
  );

  if (kDebugMode) {
    print(signInWithPasswordResponse.toString());
  }
}
