// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_supported_idp_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DefaultSupportedIdpConfig _$DefaultSupportedIdpConfigFromJson(
        Map<String, dynamic> json) =>
    DefaultSupportedIdpConfig(
      name: json['name'] as String,
      enabled: json['enabled'] as bool,
      clientId: json['clientId'] as String,
      clientSecret: json['clientSecret'] as String,
      appleSignInConfig: AppleSignInConfig.fromJson(
          json['appleSignInConfig'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DefaultSupportedIdpConfigToJson(
        DefaultSupportedIdpConfig instance) =>
    <String, dynamic>{
      'name': instance.name,
      'enabled': instance.enabled,
      'clientId': instance.clientId,
      'clientSecret': instance.clientSecret,
      'appleSignInConfig': instance.appleSignInConfig,
    };
