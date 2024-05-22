import 'package:json_annotation/json_annotation.dart';
import 'package:volunteersapp/data/models/cloud_fire_store/precondition.dart';

part 'update_mask.g.dart';

@JsonSerializable()
class UpdateMask {
  @JsonKey(name: "DocumentMask")
  final Precondition documentMask;

  UpdateMask({
    required this.documentMask,
  });

  UpdateMask copyWith({
    Precondition? documentMask,
  }) =>
      UpdateMask(
        documentMask: documentMask ?? this.documentMask,
      );

  factory UpdateMask.fromJson(Map<String, dynamic> json) => _$UpdateMaskFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateMaskToJson(this);
}
