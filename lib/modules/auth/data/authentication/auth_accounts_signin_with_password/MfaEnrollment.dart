import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:volunteersapp/modules/auth/data/authentication/auth_accounts_signin_with_password/EmailInfo.dart';
import 'package:volunteersapp/modules/auth/data/authentication/auth_accounts_signin_with_password/TotpInfo.dart';

MfaEnrollment mfaEnrollmentFromJson(String str) => MfaEnrollment.fromJson(json.decode(str));

String mfaEnrollmentToJson(EmailInfo data) => json.encode(data.toJson());

class MfaEnrollment extends Equatable {
  final String mfaEnrollmentId;
  final String displayName;
  final String enrolledAt;
  final String phoneInfo;
  final TotpInfo totpInfo;
  final EmailInfo emailInfo;
  final String unobfuscatedPhoneInfo;

  const MfaEnrollment({
    required this.mfaEnrollmentId,
    required this.displayName,
    required this.enrolledAt,
    required this.phoneInfo,
    required this.totpInfo,
    required this.emailInfo,
    required this.unobfuscatedPhoneInfo,
  });

  factory MfaEnrollment.fromJson(Map<String, dynamic> json) => MfaEnrollment(
        mfaEnrollmentId: json['mfaEnrollmentId'],
        displayName: json['displayName'],
        enrolledAt: json['enrolledAt'],
        phoneInfo: json['phoneInfo'],
        totpInfo: TotpInfo.fromJson(json['totpInfo']),
        emailInfo: EmailInfo.fromJson(json['emailInfo']),
        unobfuscatedPhoneInfo: json['unobfuscatedPhoneInfo'],
      );

  Map<String, dynamic> toJson() => {
        'mfaEnrollmentId': mfaEnrollmentId,
        'displayName': displayName,
        'enrolledAt': enrolledAt,
        'phoneInfo': phoneInfo,
        'totpInfo': totpInfo.toJson(),
        'emailInfo': emailInfo.toJson(),
        'unobfuscatedPhoneInfo': unobfuscatedPhoneInfo,
      };

  @override
  List<Object> get props => [
        mfaEnrollmentId,
        displayName,
        enrolledAt,
        phoneInfo,
        totpInfo,
        emailInfo,
        unobfuscatedPhoneInfo,
      ];
}
