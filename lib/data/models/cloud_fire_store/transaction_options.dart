import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

TransactionOptions transactionOptionsFromJson(String str) => TransactionOptions.fromJson(json.decode(str));

String transactionOptionsToJson(TransactionOptions data) => json.encode(data.toJson());

@JsonSerializable()
class TransactionOptions {
  @JsonKey(name: "readOnly")
  final ReadOnly readOnly;
  @JsonKey(name: "readWrite")
  final ReadWrite readWrite;

  TransactionOptions({
    required this.readOnly,
    required this.readWrite,
  });

  TransactionOptions copyWith({
    ReadOnly? readOnly,
    ReadWrite? readWrite,
  }) =>
      TransactionOptions(
        readOnly: readOnly ?? this.readOnly,
        readWrite: readWrite ?? this.readWrite,
      );

  factory TransactionOptions.fromJson(Map<String, dynamic> json) => TransactionOptions(
        readOnly: ReadOnly.fromJson(json["readOnly"]),
        readWrite: ReadWrite.fromJson(json["readWrite"]),
      );

  Map<String, dynamic> toJson() => {
        "readOnly": readOnly.toJson(),
        "readWrite": readWrite.toJson(),
      };
}

@JsonSerializable()
class ReadOnly {
  @JsonKey(name: "ReadOnly")
  final Read readOnly;

  ReadOnly({
    required this.readOnly,
  });

  ReadOnly copyWith({
    Read? readOnly,
  }) =>
      ReadOnly(
        readOnly: readOnly ?? this.readOnly,
      );

  factory ReadOnly.fromJson(Map<String, dynamic> json) => ReadOnly(
        readOnly: Read.fromJson(json["ReadOnly"]),
      );

  Map<String, dynamic> toJson() => {
        "ReadOnly": readOnly.toJson(),
      };
}

@JsonSerializable()
class Read {
  @JsonKey(name: "Read")
  final Read read;

  Read({
    required this.read,
  });

  Read copyWith({
    Read? read,
  }) =>
      Read(
        read: read ?? this.read,
      );

  factory Read.fromJson(Map<String, dynamic> json) => Read(
        read: Read.fromJson(json["Read"]),
      );

  Map<String, dynamic> toJson() => {};
}

@JsonSerializable()
class ReadWrite {
  @JsonKey(name: "ReadWrite")
  final Read readWrite;

  ReadWrite({
    required this.readWrite,
  });

  ReadWrite copyWith({
    Read? readWrite,
  }) =>
      ReadWrite(
        readWrite: readWrite ?? this.readWrite,
      );

  factory ReadWrite.fromJson(Map<String, dynamic> json) => ReadWrite(
        readWrite: Read.fromJson(json["ReadWrite"]),
      );

  Map<String, dynamic> toJson() => {
        "ReadWrite": readWrite.toJson(),
      };
}
