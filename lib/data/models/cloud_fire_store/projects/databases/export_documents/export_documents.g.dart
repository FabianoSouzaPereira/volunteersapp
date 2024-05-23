// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_documents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExportDocuments _$ExportDocumentsFromJson(Map<String, dynamic> json) =>
    ExportDocuments(
      collectionIds: (json['collectionIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      outputUriPrefix: json['outputUriPrefix'] as String,
      namespaceIds: (json['namespaceIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      snapshotTime: json['snapshotTime'] as String,
    );

Map<String, dynamic> _$ExportDocumentsToJson(ExportDocuments instance) =>
    <String, dynamic>{
      'collectionIds': instance.collectionIds,
      'outputUriPrefix': instance.outputUriPrefix,
      'namespaceIds': instance.namespaceIds,
      'snapshotTime': instance.snapshotTime,
    };
