// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Field _$FieldFromJson(Map<String, dynamic> json) => Field(
      name: json['name'] as String,
      indexConfig:
          IndexConfig.fromJson(json['indexConfig'] as Map<String, dynamic>),
      ttlConfig: TtlConfig.fromJson(json['ttlConfig'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FieldToJson(Field instance) => <String, dynamic>{
      'name': instance.name,
      'indexConfig': instance.indexConfig,
      'ttlConfig': instance.ttlConfig,
    };
