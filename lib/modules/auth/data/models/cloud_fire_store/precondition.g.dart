// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precondition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Precondition _$PreconditionFromJson(Map<String, dynamic> json) => Precondition(
      exists: json['exists'] as bool,
      updateTime: json['updateTime'] as String,
    );

Map<String, dynamic> _$PreconditionToJson(Precondition instance) =>
    <String, dynamic>{
      'exists': instance.exists,
      'updateTime': instance.updateTime,
    };
