import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

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

  factory FieldReference.fromJson(Map<String, dynamic> json) => FieldReference(
        fieldPath: json["fieldPath"],
      );

  Map<String, dynamic> toJson() => {
        "fieldPath": fieldPath,
      };
}
