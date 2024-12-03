// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreferencesModel _$PreferencesModelFromJson(Map<String, dynamic> json) =>
    PreferencesModel(
      language: json['language'] as String? ?? '',
      timezone: json['timezone'] as String? ?? '',
      notifications: json['notifications'] == null
          ? const NotificationsModel()
          : NotificationsModel.fromJson(
              json['notifications'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PreferencesModelToJson(PreferencesModel instance) =>
    <String, dynamic>{
      'language': instance.language,
      'timezone': instance.timezone,
      'notifications': instance.notifications,
    };
