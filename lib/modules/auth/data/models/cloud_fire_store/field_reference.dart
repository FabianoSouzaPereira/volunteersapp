import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'field_reference.g.dart';

FieldReference fieldReferenceFromJson(String str) => FieldReference.fromJson(json.decode(str));

String fieldReferenceToJson(FieldReference data) => json.encode(data.toJson());

@JsonSerializable()
class FieldReference {
  @JsonKey(name: "fieldPath")
  final String fieldPath;

  FieldReference({
    required this.fieldPath,
  });

  FieldReference copyWith({
    String? fieldPath,
  }) =>
      FieldReference(
        fieldPath: fieldPath ?? this.fieldPath,
      );

  factory FieldReference.fromJson(Map<String, dynamic> json) => _$FieldReferenceFromJson(json);

  Map<String, dynamic> toJson() => _$FieldReferenceToJson(this);
}
