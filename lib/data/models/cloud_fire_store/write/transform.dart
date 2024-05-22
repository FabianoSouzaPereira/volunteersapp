import 'package:json_annotation/json_annotation.dart';
import 'package:volunteersapp/data/models/cloud_fire_store/precondition.dart';

part 'transform.g.dart';

@JsonSerializable()
class Transform {
  @JsonKey(name: "DocumentTransform")
  final Precondition documentTransform;

  Transform({
    required this.documentTransform,
  });

  Transform copyWith({
    Precondition? documentTransform,
  }) =>
      Transform(
        documentTransform: documentTransform ?? this.documentTransform,
      );

  factory Transform.fromJson(Map<String, dynamic> json) => _$TransformFromJson(json);

  Map<String, dynamic> toJson() => _$TransformToJson(this);
}
