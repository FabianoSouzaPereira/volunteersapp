import 'package:json_annotation/json_annotation.dart';
import 'package:volunteersapp/data/models/cloud_fire_store/precondition.dart';

part 'update.g.dart';

@JsonSerializable()
class Update {
  @JsonKey(name: "Document")
  final Precondition document;

  Update({
    required this.document,
  });

  Update copyWith({
    Precondition? document,
  }) =>
      Update(
        document: document ?? this.document,
      );

  factory Update.fromJson(Map<String, dynamic> json) => _$UpdateFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateToJson(this);
}
