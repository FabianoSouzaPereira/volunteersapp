import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:volunteersapp/data/models/cloud_fire_store/write/current_document.dart';
import 'package:volunteersapp/data/models/cloud_fire_store/write/transform.dart';
import 'package:volunteersapp/data/models/cloud_fire_store/write/update.dart';
import 'package:volunteersapp/data/models/cloud_fire_store/write/update_mask.dart';
import 'package:volunteersapp/data/models/cloud_fire_store/write/update_transform.dart';

part 'write.g.dart';

Write writeFromJson(String str) => Write.fromJson(json.decode(str));

String writeToJson(Write data) => json.encode(data.toJson());

@JsonSerializable()
class Write {
  @JsonKey(name: "updateMask")
  final UpdateMask updateMask;
  @JsonKey(name: "updateTransforms")
  final List<UpdateTransform> updateTransforms;
  @JsonKey(name: "currentDocument")
  final CurrentDocument currentDocument;
  @JsonKey(name: "update")
  final Update update;
  @JsonKey(name: "delete")
  final String delete;
  @JsonKey(name: "transform")
  final Transform transform;

  Write({
    required this.updateMask,
    required this.updateTransforms,
    required this.currentDocument,
    required this.update,
    required this.delete,
    required this.transform,
  });

  Write copyWith({
    UpdateMask? updateMask,
    List<UpdateTransform>? updateTransforms,
    CurrentDocument? currentDocument,
    Update? update,
    String? delete,
    Transform? transform,
  }) =>
      Write(
        updateMask: updateMask ?? this.updateMask,
        updateTransforms: updateTransforms ?? this.updateTransforms,
        currentDocument: currentDocument ?? this.currentDocument,
        update: update ?? this.update,
        delete: delete ?? this.delete,
        transform: transform ?? this.transform,
      );

  factory Write.fromJson(Map<String, dynamic> json) => _$WriteFromJson(json);

  Map<String, dynamic> toJson() => _$WriteToJson(this);
}
