// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) => LoginModel(
      username: json['username'] as String? ?? '',
      email: json['email'] as String? ?? '',
      password: json['password'] as String? ?? '',
      lastLogin: json['lastLogin'] == null
          ? null
          : DateTime.parse(json['lastLogin'] as String),
      accountStatus: json['accountStatus'] as String? ?? '',
      twoFactorEnabled: json['twoFactorEnabled'] as bool? ?? false,
      twoFactorCode: json['twoFactorCode'] ?? 0,
      failedLoginAttempts: (json['failedLoginAttempts'] as num?)?.toInt() ?? 0,
      lastFailedAttempt: json['lastFailedAttempt'] == null
          ? null
          : DateTime.parse(json['lastFailedAttempt'] as String),
    );

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'lastLogin': instance.lastLogin.toIso8601String(),
      'accountStatus': instance.accountStatus,
      'twoFactorEnabled': instance.twoFactorEnabled,
      'twoFactorCode': instance.twoFactorCode,
      'failedLoginAttempts': instance.failedLoginAttempts,
      'lastFailedAttempt': instance.lastFailedAttempt.toIso8601String(),
    };
