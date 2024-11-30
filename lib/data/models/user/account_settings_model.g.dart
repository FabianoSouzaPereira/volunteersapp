// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountSettingsModel _$AccountSettingsModelFromJson(
        Map<String, dynamic> json) =>
    AccountSettingsModel(
      privacy: PrivacyModel.fromJson(json['privacy'] as Map<String, dynamic>),
      security:
          SecurityModel.fromJson(json['security'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountSettingsModelToJson(
        AccountSettingsModel instance) =>
    <String, dynamic>{
      'privacy': instance.privacy,
      'security': instance.security,
    };
