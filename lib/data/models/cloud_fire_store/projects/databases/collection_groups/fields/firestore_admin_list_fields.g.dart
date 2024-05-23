// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_admin_list_fields.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FirestoreAdminListFields _$FirestoreAdminListFieldsFromJson(
        Map<String, dynamic> json) =>
    FirestoreAdminListFields(
      fields: (json['fields'] as List<dynamic>)
          .map((e) => Field.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageToken: json['nextPageToken'] as String,
    );

Map<String, dynamic> _$FirestoreAdminListFieldsToJson(
        FirestoreAdminListFields instance) =>
    <String, dynamic>{
      'fields': instance.fields,
      'nextPageToken': instance.nextPageToken,
    };

Field _$FieldFromJson(Map<String, dynamic> json) => Field(
      field: FieldClass.fromJson(json['Field'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FieldToJson(Field instance) => <String, dynamic>{
      'Field': instance.field,
    };

FieldClass _$FieldClassFromJson(Map<String, dynamic> json) => FieldClass();

Map<String, dynamic> _$FieldClassToJson(FieldClass instance) =>
    <String, dynamic>{};
