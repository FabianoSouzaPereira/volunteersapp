import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'operation.g.dart';

Operation operationFromJson(String str) => Operation.fromJson(json.decode(str));

String operationToJson(Operation data) => json.encode(data.toJson());

@JsonSerializable()
class Operation {
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "metadata")
  final Metadata metadata;
  @JsonKey(name: "done")
  final bool done;
  @JsonKey(name: "error")
  final Error error;
  @JsonKey(name: "response")
  final Metadata response;

  Operation({
    required this.name,
    required this.metadata,
    required this.done,
    required this.error,
    required this.response,
  });

  Operation copyWith({
    String? name,
    Metadata? metadata,
    bool? done,
    Error? error,
    Metadata? response,
  }) =>
      Operation(
        name: name ?? this.name,
        metadata: metadata ?? this.metadata,
        done: done ?? this.done,
        error: error ?? this.error,
        response: response ?? this.response,
      );

  factory Operation.fromJson(Map<String, dynamic> json) => _$OperationFromJson(json);

  Map<String, dynamic> toJson() => _$OperationToJson(this);
}

@JsonSerializable()
class Error {
  @JsonKey(name: "Status")
  final Status status;

  Error({
    required this.status,
  });

  Error copyWith({
    Status? status,
  }) =>
      Error(
        status: status ?? this.status,
      );

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorToJson(this);
}

@JsonSerializable()
class Status {
  Status();

  Status copyWith() => Status();

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

  Map<String, dynamic> toJson() => _$StatusToJson(this);
}

@JsonSerializable()
class Metadata {
  @JsonKey(name: "@type")
  final String type;

  Metadata({
    required this.type,
  });

  Metadata copyWith({
    String? type,
  }) =>
      Metadata(
        type: type ?? this.type,
      );

  factory Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);

  Map<String, dynamic> toJson() => _$MetadataToJson(this);
}
