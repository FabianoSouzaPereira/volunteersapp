import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'firestore_admin_list_fields.g.dart';

FirestoreAdminListFields firestoreAdminListFieldsFromJson(String str) => FirestoreAdminListFields.fromJson(json.decode(str));

String firestoreAdminListFieldsToJson(FirestoreAdminListFields data) => json.encode(data.toJson());

@JsonSerializable()
class FirestoreAdminListFields {
  @JsonKey(name: "fields")
  final List<Field> fields;
  @JsonKey(name: "nextPageToken")
  final String nextPageToken;

  FirestoreAdminListFields({
    required this.fields,
    required this.nextPageToken,
  });

  FirestoreAdminListFields copyWith({
    List<Field>? fields,
    String? nextPageToken,
  }) =>
      FirestoreAdminListFields(
        fields: fields ?? this.fields,
        nextPageToken: nextPageToken ?? this.nextPageToken,
      );

  factory FirestoreAdminListFields.fromJson(Map<String, dynamic> json) => _$FirestoreAdminListFieldsFromJson(json);

  Map<String, dynamic> toJson() => _$FirestoreAdminListFieldsToJson(this);
}

@JsonSerializable()
class Field {
  @JsonKey(name: "Field")
  final FieldClass field;

  Field({
    required this.field,
  });

  Field copyWith({
    FieldClass? field,
  }) =>
      Field(
        field: field ?? this.field,
      );

  factory Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);

  Map<String, dynamic> toJson() => _$FieldToJson(this);
}

@JsonSerializable()
class FieldClass {
  FieldClass();

  FieldClass copyWith() => FieldClass();

  factory FieldClass.fromJson(Map<String, dynamic> json) => _$FieldClassFromJson(json);

  Map<String, dynamic> toJson() => _$FieldClassToJson(this);
}
