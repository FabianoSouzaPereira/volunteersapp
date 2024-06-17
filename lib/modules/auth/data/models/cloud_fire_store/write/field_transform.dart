// To parse this JSON data, do
//
//     final fieldTransform = fieldTransformFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'field_transform.g.dart';

FieldTransform fieldTransformFromJson(String str) => FieldTransform.fromJson(json.decode(str));

String fieldTransformToJson(FieldTransform data) => json.encode(data.toJson());

@JsonSerializable()
class FieldTransform {
  @JsonKey(name: "fieldPath")
  final String fieldPath;
  @JsonKey(name: "setToServerValue")
  final String setToServerValue;
  @JsonKey(name: "increment")
  final Increment increment;
  @JsonKey(name: "maximum")
  final Increment maximum;
  @JsonKey(name: "minimum")
  final Increment minimum;
  @JsonKey(name: "appendMissingElements")
  final AppendMissingElements appendMissingElements;
  @JsonKey(name: "removeAllFromArray")
  final AppendMissingElements removeAllFromArray;

  FieldTransform({
    required this.fieldPath,
    required this.setToServerValue,
    required this.increment,
    required this.maximum,
    required this.minimum,
    required this.appendMissingElements,
    required this.removeAllFromArray,
  });

  FieldTransform copyWith({
    String? fieldPath,
    String? setToServerValue,
    Increment? increment,
    Increment? maximum,
    Increment? minimum,
    AppendMissingElements? appendMissingElements,
    AppendMissingElements? removeAllFromArray,
  }) =>
      FieldTransform(
        fieldPath: fieldPath ?? this.fieldPath,
        setToServerValue: setToServerValue ?? this.setToServerValue,
        increment: increment ?? this.increment,
        maximum: maximum ?? this.maximum,
        minimum: minimum ?? this.minimum,
        appendMissingElements: appendMissingElements ?? this.appendMissingElements,
        removeAllFromArray: removeAllFromArray ?? this.removeAllFromArray,
      );

  factory FieldTransform.fromJson(Map<String, dynamic> json) => _$FieldTransformFromJson(json);

  Map<String, dynamic> toJson() => _$FieldTransformToJson(this);
}

@JsonSerializable()
class AppendMissingElements {
  @JsonKey(name: "values")
  final List<dynamic> values;

  AppendMissingElements({
    required this.values,
  });

  AppendMissingElements copyWith({
    List<dynamic>? values,
  }) =>
      AppendMissingElements(
        values: values ?? this.values,
      );

  factory AppendMissingElements.fromJson(Map<String, dynamic> json) => _$AppendMissingElementsFromJson(json);

  Map<String, dynamic> toJson() => _$AppendMissingElementsToJson(this);
}

@JsonSerializable()
class Increment {
  @JsonKey(name: "value")
  final Value value;

  Increment({
    required this.value,
  });

  Increment copyWith({
    Value? value,
  }) =>
      Increment(
        value: value ?? this.value,
      );

  factory Increment.fromJson(Map<String, dynamic> json) => _$IncrementFromJson(json);

  Map<String, dynamic> toJson() => _$IncrementToJson(this);
}

@JsonSerializable()
class Value {
  Value();

  Value copyWith() => Value();

  factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);

  Map<String, dynamic> toJson() => _$ValueToJson(this);
}
