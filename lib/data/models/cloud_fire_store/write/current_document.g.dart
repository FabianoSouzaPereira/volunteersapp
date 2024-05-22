// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentDocument _$CurrentDocumentFromJson(Map<String, dynamic> json) =>
    CurrentDocument(
      precondition:
          Precondition.fromJson(json['Precondition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CurrentDocumentToJson(CurrentDocument instance) =>
    <String, dynamic>{
      'Precondition': instance.precondition,
    };
