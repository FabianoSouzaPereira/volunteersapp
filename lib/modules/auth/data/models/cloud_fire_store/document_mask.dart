import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'document_mask.g.dart';

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

  factory DocumentMask.fromJson(Map<String, dynamic> json) => _$DocumentMaskFromJson(json);

  Map<String, dynamic> toJson() => _$DocumentMaskToJson(this);
}
