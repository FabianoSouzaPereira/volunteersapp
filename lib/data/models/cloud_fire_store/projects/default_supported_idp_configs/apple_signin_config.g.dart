// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apple_signin_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppleSignInConfig _$AppleSignInConfigFromJson(Map<String, dynamic> json) =>
    AppleSignInConfig(
      clientId: json['clientId'] as String,
      teamId: json['teamId'] as String,
      keyId: json['keyId'] as String,
      privateKey: json['privateKey'] as String,
    );

Map<String, dynamic> _$AppleSignInConfigToJson(AppleSignInConfig instance) =>
    <String, dynamic>{
      'clientId': instance.clientId,
      'teamId': instance.teamId,
      'keyId': instance.keyId,
      'privateKey': instance.privateKey,
    };
