// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Document _$DocumentFromJson(Map<String, dynamic> json) => Document(
      name: json['name'] as String,
      fields: Fields.fromJson(json['fields'] as Map<String, dynamic>),
      createTime: json['createTime'] as String,
      updateTime: json['updateTime'] as String,
    );

Map<String, dynamic> _$DocumentToJson(Document instance) => <String, dynamic>{
      'name': instance.name,
      'fields': instance.fields,
      'createTime': instance.createTime,
      'updateTime': instance.updateTime,
    };

Fields _$FieldsFromJson(Map<String, dynamic> json) => Fields(
      string: StringClass.fromJson(json['string'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FieldsToJson(Fields instance) => <String, dynamic>{
      'string': instance.string,
    };

StringClass _$StringClassFromJson(Map<String, dynamic> json) => StringClass(
      value: Value.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringClassToJson(StringClass instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

Value _$ValueFromJson(Map<String, dynamic> json) => Value();

Map<String, dynamic> _$ValueToJson(Value instance) => <String, dynamic>{};
