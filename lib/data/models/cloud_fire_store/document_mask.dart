import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

DocumentMask documentMaskFromJson(String str) => DocumentMask.fromJson(json.decode(str));

String documentMaskToJson(DocumentMask data) => json.encode(data.toJson());

@JsonSerializable()
class DocumentMask {
  @JsonKey(name: "fieldPaths")
  final List<String> fieldPaths;

  DocumentMask({
    required this.fieldPaths,
  });

  DocumentMask copyWith({
    List<String>? fieldPaths,
  }) =>
      DocumentMask(
        fieldPaths: fieldPaths ?? this.fieldPaths,
      );

  factory DocumentMask.fromJson(Map<String, dynamic> json) => DocumentMask(
        fieldPaths: List<String>.from(json["fieldPaths"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "fieldPaths": List<dynamic>.from(fieldPaths.map((x) => x)),
      };
}
