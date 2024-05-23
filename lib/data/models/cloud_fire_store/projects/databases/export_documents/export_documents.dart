import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'export_documents.g.dart';

ExportDocuments exportDocumentsFromJson(String str) => ExportDocuments.fromJson(json.decode(str));

String exportDocumentsToJson(ExportDocuments data) => json.encode(data.toJson());

@JsonSerializable()
class ExportDocuments {
  @JsonKey(name: "collectionIds")
  final List<String> collectionIds;
  @JsonKey(name: "outputUriPrefix")
  final String outputUriPrefix;
  @JsonKey(name: "namespaceIds")
  final List<String> namespaceIds;
  @JsonKey(name: "snapshotTime")
  final String snapshotTime;

  ExportDocuments({
    required this.collectionIds,
    required this.outputUriPrefix,
    required this.namespaceIds,
    required this.snapshotTime,
  });

  ExportDocuments copyWith({
    List<String>? collectionIds,
    String? outputUriPrefix,
    List<String>? namespaceIds,
    String? snapshotTime,
  }) =>
      ExportDocuments(
        collectionIds: collectionIds ?? this.collectionIds,
        outputUriPrefix: outputUriPrefix ?? this.outputUriPrefix,
        namespaceIds: namespaceIds ?? this.namespaceIds,
        snapshotTime: snapshotTime ?? this.snapshotTime,
      );

  factory ExportDocuments.fromJson(Map<String, dynamic> json) => _$ExportDocumentsFromJson(json);

  Map<String, dynamic> toJson() => _$ExportDocumentsToJson(this);
}
