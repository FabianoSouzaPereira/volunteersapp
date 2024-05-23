import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'database_list.g.dart';

DataBaseList dataBaseListFromJson(String str) => DataBaseList.fromJson(json.decode(str));

String dataBaseListToJson(DataBaseList data) => json.encode(data.toJson());

@JsonSerializable()
class DataBaseList {
  @JsonKey(name: "databases")
  final List<Database> databases;
  @JsonKey(name: "unreachable")
  final List<String> unreachable;

  DataBaseList({
    required this.databases,
    required this.unreachable,
  });

  DataBaseList copyWith({
    List<Database>? databases,
    List<String>? unreachable,
  }) =>
      DataBaseList(
        databases: databases ?? this.databases,
        unreachable: unreachable ?? this.unreachable,
      );

  factory DataBaseList.fromJson(Map<String, dynamic> json) => _$DataBaseListFromJson(json);

  Map<String, dynamic> toJson() => _$DataBaseListToJson(this);
}

@JsonSerializable()
class Database {
  @JsonKey(name: "Database")
  final DatabaseClass database;

  Database({
    required this.database,
  });

  Database copyWith({
    DatabaseClass? database,
  }) =>
      Database(
        database: database ?? this.database,
      );

  factory Database.fromJson(Map<String, dynamic> json) => _$DatabaseFromJson(json);

  Map<String, dynamic> toJson() => _$DatabaseToJson(this);
}

@JsonSerializable()
class DatabaseClass {
  DatabaseClass();

  DatabaseClass copyWith() => DatabaseClass();

  factory DatabaseClass.fromJson(Map<String, dynamic> json) => _$DatabaseClassFromJson(json);

  Map<String, dynamic> toJson() => _$DatabaseClassToJson(this);
}
