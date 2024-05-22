// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transform.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transform _$TransformFromJson(Map<String, dynamic> json) => Transform(
      documentTransform: Precondition.fromJson(
          json['DocumentTransform'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransformToJson(Transform instance) => <String, dynamic>{
      'DocumentTransform': instance.documentTransform,
    };
