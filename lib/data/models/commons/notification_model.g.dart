// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationsModel _$NotificationsModelFromJson(Map<String, dynamic> json) =>
    NotificationsModel(
      email: json['email'] as bool? ?? false,
      sms: json['sms'] as bool? ?? false,
      push: json['push'] as bool? ?? false,
    );

Map<String, dynamic> _$NotificationsModelToJson(NotificationsModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'sms': instance.sms,
      'push': instance.push,
    };
