import 'package:json_annotation/json_annotation.dart';
import 'package:volunteersapp/data/models/cloud_fire_store/precondition.dart';

part 'current_document.g.dart';

@JsonSerializable()
class CurrentDocument {
  @JsonKey(name: "Precondition")
  final Precondition precondition;

  CurrentDocument({
    required this.precondition,
  });

  CurrentDocument copyWith({
    Precondition? precondition,
  }) =>
      CurrentDocument(
        precondition: precondition ?? this.precondition,
      );

  factory CurrentDocument.fromJson(Map<String, dynamic> json) => _$CurrentDocumentFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentDocumentToJson(this);
}
