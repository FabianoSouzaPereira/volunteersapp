// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Operation _$OperationFromJson(Map<String, dynamic> json) => Operation(
      name: json['name'] as String,
      metadata: Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      done: json['done'] as bool,
      error: Error.fromJson(json['error'] as Map<String, dynamic>),
      response: Metadata.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OperationToJson(Operation instance) => <String, dynamic>{
      'name': instance.name,
      'metadata': instance.metadata,
      'done': instance.done,
      'error': instance.error,
      'response': instance.response,
    };

Error _$ErrorFromJson(Map<String, dynamic> json) => Error(
      status: Status.fromJson(json['Status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ErrorToJson(Error instance) => <String, dynamic>{
      'Status': instance.status,
    };

Status _$StatusFromJson(Map<String, dynamic> json) => Status();

Map<String, dynamic> _$StatusToJson(Status instance) => <String, dynamic>{};

Metadata _$MetadataFromJson(Map<String, dynamic> json) => Metadata(
      type: json['@type'] as String,
    );

Map<String, dynamic> _$MetadataToJson(Metadata instance) => <String, dynamic>{
      '@type': instance.type,
    };
