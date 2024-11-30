// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allowed_device_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllowedDeviceModel _$AllowedDeviceModelFromJson(Map<String, dynamic> json) =>
    AllowedDeviceModel(
      deviceId: json['deviceId'] as String,
      deviceType: json['deviceType'] as String,
      lastAccess: DateTime.parse(json['lastAccess'] as String),
    );

Map<String, dynamic> _$AllowedDeviceModelToJson(AllowedDeviceModel instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'deviceType': instance.deviceType,
      'lastAccess': instance.lastAccess.toIso8601String(),
    };
