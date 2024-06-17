// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_transform.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FieldTransform _$FieldTransformFromJson(Map<String, dynamic> json) =>
    FieldTransform(
      fieldPath: json['fieldPath'] as String,
      setToServerValue: json['setToServerValue'] as String,
      increment: Increment.fromJson(json['increment'] as Map<String, dynamic>),
      maximum: Increment.fromJson(json['maximum'] as Map<String, dynamic>),
      minimum: Increment.fromJson(json['minimum'] as Map<String, dynamic>),
      appendMissingElements: AppendMissingElements.fromJson(
          json['appendMissingElements'] as Map<String, dynamic>),
      removeAllFromArray: AppendMissingElements.fromJson(
          json['removeAllFromArray'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FieldTransformToJson(FieldTransform instance) =>
    <String, dynamic>{
      'fieldPath': instance.fieldPath,
      'setToServerValue': instance.setToServerValue,
      'increment': instance.increment,
      'maximum': instance.maximum,
      'minimum': instance.minimum,
      'appendMissingElements': instance.appendMissingElements,
      'removeAllFromArray': instance.removeAllFromArray,
    };

AppendMissingElements _$AppendMissingElementsFromJson(
        Map<String, dynamic> json) =>
    AppendMissingElements(
      values: json['values'] as List<dynamic>,
    );

Map<String, dynamic> _$AppendMissingElementsToJson(
        AppendMissingElements instance) =>
    <String, dynamic>{
      'values': instance.values,
    };

Increment _$IncrementFromJson(Map<String, dynamic> json) => Increment(
      value: Value.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IncrementToJson(Increment instance) => <String, dynamic>{
      'value': instance.value,
    };

Value _$ValueFromJson(Map<String, dynamic> json) => Value();

Map<String, dynamic> _$ValueToJson(Value instance) => <String, dynamic>{};
