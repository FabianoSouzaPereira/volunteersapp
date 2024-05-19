import 'dart:convert';
import 'package:equatable/equatable.dart';

SignInWithPasswordRequestModel signUpWithEmailAndPasswordFromJson(String str) => SignInWithPasswordRequestModel.fromJson(json.decode(str));

String signInWithPasswordRequestModelToJson(SignInWithPasswordRequestModel data) => json.encode(data.toJson());

class SignInWithPasswordRequestModel extends Equatable {
  final String email;
  final String password;
  final String pendingIdToken;
  final String captchaChallenge;
  final String captchaResponse;
  final String instanceId;
  final String delegatedProjectNumber;
  final String idToken;
  final bool returnSecureToken;
  final String tenantId;
  final ClientType clientType;
  final RecaptchaVersion recaptchaVersion;

  const SignInWithPasswordRequestModel({
    required this.email,
    required this.password,
    required this.pendingIdToken,
    required this.captchaChallenge,
    required this.captchaResponse,
    required this.instanceId,
    required this.delegatedProjectNumber,
    required this.idToken,
    required this.returnSecureToken,
    required this.tenantId,
    required this.clientType,
    required this.recaptchaVersion,
  });

  factory SignInWithPasswordRequestModel.fromJson(Map<String, dynamic> json) => SignInWithPasswordRequestModel(
        email: json['email'],
        password: json['password'],
        pendingIdToken: json['pendingIdToken'],
        captchaChallenge: json['captchaChallenge'],
        captchaResponse: json['captchaResponse'],
        instanceId: json['instanceId'],
        delegatedProjectNumber: json['delegatedProjectNumber'],
        idToken: json['idToken'],
        returnSecureToken: json['returnSecureToken'],
        tenantId: json['tenantId'],
        clientType: json['clientType'],
        recaptchaVersion: json['recaptchaVersion'],
      );

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'pendingIdToken': pendingIdToken,
      'captchaChallenge': captchaChallenge,
      'captchaResponse': captchaResponse,
      'instanceId': instanceId,
      'delegatedProjectNumber': delegatedProjectNumber,
      'idToken': idToken,
      'returnSecureToken': returnSecureToken,
      'tenantId': tenantId,
      'clientType': clientType,
      'recaptchaVersion': recaptchaVersion
    };
  }

  @override
  List<Object?> get props => [
        email,
        password,
        pendingIdToken,
        captchaChallenge,
        captchaResponse,
        instanceId,
        delegatedProjectNumber,
        idToken,
        returnSecureToken,
        tenantId,
        clientType,
        recaptchaVersion,
      ];

  SignInWithPasswordRequestModel copyWith({
    String? email,
    String? password,
    String? pendingIdToken,
    String? captchaChallenge,
    String? captchaResponse,
    String? instanceId,
    String? delegatedProjectNumber,
    String? idToken,
    bool? returnSecureToken,
    String? tenantId,
    ClientType? clientType,
    RecaptchaVersion? recaptchaVersion,
  }) {
    return SignInWithPasswordRequestModel(
      email: email ?? this.email,
      password: password ?? this.password,
      pendingIdToken: pendingIdToken ?? this.pendingIdToken,
      captchaChallenge: captchaChallenge ?? this.captchaChallenge,
      captchaResponse: captchaResponse ?? this.captchaResponse,
      instanceId: instanceId ?? this.instanceId,
      delegatedProjectNumber: delegatedProjectNumber ?? this.delegatedProjectNumber,
      idToken: idToken ?? this.idToken,
      returnSecureToken: returnSecureToken ?? this.returnSecureToken,
      tenantId: tenantId ?? this.tenantId,
      clientType: clientType ?? this.clientType,
      recaptchaVersion: recaptchaVersion ?? this.recaptchaVersion,
    );
  }

  @override
  String toString() {
    return 'SignInWithPasswordRequestModel{email: $email, password: $password, pendingIdToken: $pendingIdToken, captchaChallenge: $captchaChallenge, captchaResponse: $captchaResponse, instanceId: $instanceId, delegatedProjectNumber: $delegatedProjectNumber, idToken: $idToken, returnSecureToken: $returnSecureToken, tenantId: $tenantId, clientType: $clientType, recaptchaVersion: $recaptchaVersion}';
  }
}

enum ClientType {
  CLIENT_TYPE_UNSPECIFIED,
  CLIENT_TYPE_WEB,
  CLIENT_TYPE_ANDROID,
  CLIENT_TYPE_IOS,
}

enum RecaptchaVersion {
  RECAPTCHA_VERSION_UNSPECIFIED,
  RECAPTCHA_ENTERPRISE,
}
