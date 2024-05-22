import 'package:json_annotation/json_annotation.dart';
import 'package:volunteersapp/data/models/cloud_fire_store/precondition.dart';

part 'update_transform.g.dart';

@JsonSerializable()
class UpdateTransform {
  @JsonKey(name: "FieldTransform")
  final Precondition fieldTransform;

  UpdateTransform({
    required this.fieldTransform,
  });

  UpdateTransform copyWith({
    Precondition? fieldTransform,
  }) =>
      UpdateTransform(
        fieldTransform: fieldTransform ?? this.fieldTransform,
      );

  factory UpdateTransform.fromJson(Map<String, dynamic> json) => _$UpdateTransformFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateTransformToJson(this);
}
