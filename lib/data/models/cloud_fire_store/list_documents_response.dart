import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'list_documents_response.g.dart';

ListDocumentsResponse listDocumentsResponseFromJson(String str) => ListDocumentsResponse.fromJson(json.decode(str));

String listDocumentsResponseToJson(ListDocumentsResponse data) => json.encode(data.toJson());

@JsonSerializable()
class ListDocumentsResponse {
  @JsonKey(name: "documents")
  final List<dynamic> documents;
  @JsonKey(name: "nextPageToken")
  final String nextPageToken;

  ListDocumentsResponse({
    required this.documents,
    required this.nextPageToken,
  });

  ListDocumentsResponse copyWith({
    List<dynamic>? documents,
    String? nextPageToken,
  }) =>
      ListDocumentsResponse(
        documents: documents ?? this.documents,
        nextPageToken: nextPageToken ?? this.nextPageToken,
      );

  factory ListDocumentsResponse.fromJson(Map<String, dynamic> json) => _$ListDocumentsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ListDocumentsResponseToJson(this);
}
