// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cursor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cursor _$CursorFromJson(Map<String, dynamic> json) => Cursor(
      values: json['values'] as List<dynamic>,
      before: json['before'] as bool,
    );

Map<String, dynamic> _$CursorToJson(Cursor instance) => <String, dynamic>{
      'values': instance.values,
      'before': instance.before,
    };
