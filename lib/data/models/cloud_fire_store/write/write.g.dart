// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'write.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Write _$WriteFromJson(Map<String, dynamic> json) => Write(
      updateMask:
          UpdateMask.fromJson(json['updateMask'] as Map<String, dynamic>),
      updateTransforms: (json['updateTransforms'] as List<dynamic>)
          .map((e) => UpdateTransform.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentDocument: CurrentDocument.fromJson(
          json['currentDocument'] as Map<String, dynamic>),
      update: Update.fromJson(json['update'] as Map<String, dynamic>),
      delete: json['delete'] as String,
      transform: Transform.fromJson(json['transform'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WriteToJson(Write instance) => <String, dynamic>{
      'updateMask': instance.updateMask,
      'updateTransforms': instance.updateTransforms,
      'currentDocument': instance.currentDocument,
      'update': instance.update,
      'delete': instance.delete,
      'transform': instance.transform,
    };
