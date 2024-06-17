import 'package:json_annotation/json_annotation.dart';

part 'precondition.g.dart';

@JsonSerializable()
class Precondition {
  @JsonKey(name: "exists")
  final bool exists;
  @JsonKey(name: "updateTime")
  final String updateTime;

  Precondition({
    required this.exists,
    required this.updateTime,
  });

  Precondition copyWith({
    Precondition? precondition,
  }) =>
      Precondition(
        exists: exists,
        updateTime: updateTime,
      );

  factory Precondition.fromJson(Map<String, dynamic> json) => _$PreconditionFromJson(json);

  Map<String, dynamic> toJson() => _$PreconditionToJson(this);
}
