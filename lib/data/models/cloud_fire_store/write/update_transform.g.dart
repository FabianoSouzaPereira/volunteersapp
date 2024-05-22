// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_transform.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateTransform _$UpdateTransformFromJson(Map<String, dynamic> json) =>
    UpdateTransform(
      fieldTransform:
          Precondition.fromJson(json['FieldTransform'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateTransformToJson(UpdateTransform instance) =>
    <String, dynamic>{
      'FieldTransform': instance.fieldTransform,
    };
