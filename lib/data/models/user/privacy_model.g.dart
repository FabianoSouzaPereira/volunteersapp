// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'privacy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrivacyModel _$PrivacyModelFromJson(Map<String, dynamic> json) => PrivacyModel(
      profileVisibility: json['profileVisibility'] as String,
      lastSeen: json['lastSeen'] as String,
      readReceipts: json['readReceipts'] as bool,
    );

Map<String, dynamic> _$PrivacyModelToJson(PrivacyModel instance) =>
    <String, dynamic>{
      'profileVisibility': instance.profileVisibility,
      'lastSeen': instance.lastSeen,
      'readReceipts': instance.readReceipts,
    };
