// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_documents_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListDocumentsResponse _$ListDocumentsResponseFromJson(
        Map<String, dynamic> json) =>
    ListDocumentsResponse(
      documents: json['documents'] as List<dynamic>,
      nextPageToken: json['nextPageToken'] as String,
    );

Map<String, dynamic> _$ListDocumentsResponseToJson(
        ListDocumentsResponse instance) =>
    <String, dynamic>{
      'documents': instance.documents,
      'nextPageToken': instance.nextPageToken,
    };
