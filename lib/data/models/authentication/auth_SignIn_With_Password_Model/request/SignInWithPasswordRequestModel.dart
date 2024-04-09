// ignore_for_file: constant_identifier_names

import 'package:equatable/equatable.dart';

class SigInWithPasswordRequestModel extends Equatable {
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

  const SigInWithPasswordRequestModel({
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

  SigInWithPasswordRequestModel copyWith({
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
    return SigInWithPasswordRequestModel(
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
    return 'SigInWithPasswordRequestModel{email: $email, password: $password, pendingIdToken: $pendingIdToken, captchaChallenge: $captchaChallenge, captchaResponse: $captchaResponse, instanceId: $instanceId, delegatedProjectNumber: $delegatedProjectNumber, idToken: $idToken, returnSecureToken: $returnSecureToken, tenantId: $tenantId, clientType: $clientType, recaptchaVersion: $recaptchaVersion}';
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