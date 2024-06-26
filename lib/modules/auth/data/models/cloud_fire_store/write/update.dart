import 'package:json_annotation/json_annotation.dart';
import 'package:volunteersapp/modules/auth/data/models/cloud_fire_store/projects/databases/documents/document.dart';

part 'update.g.dart';

@JsonSerializable()
class Update {
  @JsonKey(name: "Document")
  final Document document;

  Update({
    required this.document,
  });

  Update copyWith({
    Document? document,
  }) =>
      Update(
        document: document ?? this.document,
      );

  factory Update.fromJson(Map<String, dynamic> json) => _$UpdateFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateToJson(this);
}
