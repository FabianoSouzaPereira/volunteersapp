import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'document_transform.g.dart';

DocumentTransform documentTransformFromJson(String str) => DocumentTransform.fromJson(json.decode(str));

String documentTransformToJson(DocumentTransform data) => json.encode(data.toJson());

@JsonSerializable()
class DocumentTransform {
  @JsonKey(name: "document")
  final String document;
  @JsonKey(name: "fieldTransforms")
  final List<FieldTransform> fieldTransforms;

  DocumentTransform({
    required this.document,
    required this.fieldTransforms,
  });

  DocumentTransform copyWith({
    String? document,
    List<FieldTransform>? fieldTransforms,
  }) =>
      DocumentTransform(
        document: document ?? this.document,
        fieldTransforms: fieldTransforms ?? this.fieldTransforms,
      );

  factory DocumentTransform.fromJson(Map<String, dynamic> json) => _$DocumentTransformFromJson(json);

  Map<String, dynamic> toJson() => _$DocumentTransformToJson(this);
}

@JsonSerializable()
class FieldTransform {
  @JsonKey(name: "FieldTransform")
  final FieldTransformClass fieldTransform;

  FieldTransform({
    required this.fieldTransform,
  });

  FieldTransform copyWith({
    FieldTransformClass? fieldTransform,
  }) =>
      FieldTransform(
        fieldTransform: fieldTransform ?? this.fieldTransform,
      );

  factory FieldTransform.fromJson(Map<String, dynamic> json) => _$FieldTransformFromJson(json);

  Map<String, dynamic> toJson() => _$FieldTransformToJson(this);
}

@JsonSerializable()
class FieldTransformClass {
  FieldTransformClass();

  FieldTransformClass copyWith() => FieldTransformClass();

  factory FieldTransformClass.fromJson(Map<String, dynamic> json) => _$FieldTransformClassFromJson(json);

  Map<String, dynamic> toJson() => _$FieldTransformClassToJson(this);
}
