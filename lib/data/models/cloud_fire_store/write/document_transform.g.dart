// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_transform.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocumentTransform _$DocumentTransformFromJson(Map<String, dynamic> json) =>
    DocumentTransform(
      document: json['document'] as String,
      fieldTransforms: (json['fieldTransforms'] as List<dynamic>)
          .map((e) => FieldTransform.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DocumentTransformToJson(DocumentTransform instance) =>
    <String, dynamic>{
      'document': instance.document,
      'fieldTransforms': instance.fieldTransforms,
    };

FieldTransform _$FieldTransformFromJson(Map<String, dynamic> json) =>
    FieldTransform(
      fieldTransform: FieldTransformClass.fromJson(
          json['FieldTransform'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FieldTransformToJson(FieldTransform instance) =>
    <String, dynamic>{
      'FieldTransform': instance.fieldTransform,
    };

FieldTransformClass _$FieldTransformClassFromJson(Map<String, dynamic> json) =>
    FieldTransformClass();

Map<String, dynamic> _$FieldTransformClassToJson(
        FieldTransformClass instance) =>
    <String, dynamic>{};
