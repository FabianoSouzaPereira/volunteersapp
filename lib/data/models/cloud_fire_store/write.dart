import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

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

  factory Write.fromJson(Map<String, dynamic> json) => Write(
        updateMask: UpdateMask.fromJson(json["updateMask"]),
        updateTransforms: List<UpdateTransform>.from(json["updateTransforms"].map((x) => UpdateTransform.fromJson(x))),
        currentDocument: CurrentDocument.fromJson(json["currentDocument"]),
        update: Update.fromJson(json["update"]),
        delete: json["delete"],
        transform: Transform.fromJson(json["transform"]),
      );

  Map<String, dynamic> toJson() => {
        "updateMask": updateMask.toJson(),
        "updateTransforms": List<dynamic>.from(updateTransforms.map((x) => x.toJson())),
        "currentDocument": currentDocument.toJson(),
        "update": update.toJson(),
        "delete": delete,
        "transform": transform.toJson(),
      };
}

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

  factory CurrentDocument.fromJson(Map<String, dynamic> json) => CurrentDocument(
        precondition: Precondition.fromJson(json["Precondition"]),
      );

  Map<String, dynamic> toJson() => {
        "Precondition": precondition.toJson(),
      };
}

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

  factory Precondition.fromJson(Map<String, dynamic> json) => Precondition(
        precondition: Precondition.fromJson(json["precondition"]),
      );

  Map<String, dynamic> toJson() => {};
}

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

  factory Transform.fromJson(Map<String, dynamic> json) => Transform(
        documentTransform: Precondition.fromJson(json["DocumentTransform"]),
      );

  Map<String, dynamic> toJson() => {
        "DocumentTransform": documentTransform.toJson(),
      };
}

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

  factory Update.fromJson(Map<String, dynamic> json) => Update(
        document: Precondition.fromJson(json["Document"]),
      );

  Map<String, dynamic> toJson() => {
        "Document": document.toJson(),
      };
}

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

  factory UpdateMask.fromJson(Map<String, dynamic> json) => UpdateMask(
        documentMask: Precondition.fromJson(json["DocumentMask"]),
      );

  Map<String, dynamic> toJson() => {
        "DocumentMask": documentMask.toJson(),
      };
}

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

  factory UpdateTransform.fromJson(Map<String, dynamic> json) => UpdateTransform(
        fieldTransform: Precondition.fromJson(json["FieldTransform"]),
      );

  Map<String, dynamic> toJson() => {
        "FieldTransform": fieldTransform.toJson(),
      };
}
