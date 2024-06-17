import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'patch.g.dart';

FirestoreAdminUpdateField firestoreAdminUpdateFieldFromJson(String str) => FirestoreAdminUpdateField.fromJson(json.decode(str));

String firestoreAdminUpdateFieldToJson(FirestoreAdminUpdateField data) => json.encode(data.toJson());

@JsonSerializable()
class FirestoreAdminUpdateField {
  @JsonKey(name: "paths")
  final String paths;

  FirestoreAdminUpdateField({
    required this.paths,
  });

  FirestoreAdminUpdateField copyWith({
    String? paths,
  }) =>
      FirestoreAdminUpdateField(
        paths: paths ?? this.paths,
      );

  factory FirestoreAdminUpdateField.fromJson(Map<String, dynamic> json) => _$FirestoreAdminUpdateFieldFromJson(json);

  Map<String, dynamic> toJson() => _$FirestoreAdminUpdateFieldToJson(this);
}
