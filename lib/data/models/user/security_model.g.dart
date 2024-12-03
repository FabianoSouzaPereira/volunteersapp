// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SecurityModel _$SecurityModelFromJson(Map<String, dynamic> json) =>
    SecurityModel(
      twoFactorAuth: json['twoFactorAuth'] as bool? ?? false,
      loginAlerts: json['loginAlerts'] as bool? ?? false,
      allowedDevices: (json['allowedDevices'] as List<dynamic>?)
              ?.map(
                  (e) => AllowedDeviceModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AllowedDeviceModel>[],
    );

Map<String, dynamic> _$SecurityModelToJson(SecurityModel instance) =>
    <String, dynamic>{
      'twoFactorAuth': instance.twoFactorAuth,
      'loginAlerts': instance.loginAlerts,
      'allowedDevices': instance.allowedDevices,
    };
