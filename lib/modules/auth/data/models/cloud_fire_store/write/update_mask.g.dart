// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_mask.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateMask _$UpdateMaskFromJson(Map<String, dynamic> json) => UpdateMask(
      documentMask:
          Precondition.fromJson(json['DocumentMask'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateMaskToJson(UpdateMask instance) =>
    <String, dynamic>{
      'DocumentMask': instance.documentMask,
    };
