import 'package:json_annotation/json_annotation.dart';

part 'precondition.g.dart';

@JsonSerializable()
class Precondition {
  @JsonKey(name: "Precondition")
  final Precondition precondition;

  Precondition({
    required this.precondition,
  });

  Precondition copyWith({
    Precondition? precondition,
  }) =>
      Precondition(
        precondition: precondition ?? this.precondition,
      );

  factory Precondition.fromJson(Map<String, dynamic> json) => _$PreconditionFromJson(json);

  Map<String, dynamic> toJson() => _$PreconditionToJson(this);
}
