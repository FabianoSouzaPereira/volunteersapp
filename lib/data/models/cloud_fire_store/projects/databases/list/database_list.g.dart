// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataBaseList _$DataBaseListFromJson(Map<String, dynamic> json) => DataBaseList(
      databases: (json['databases'] as List<dynamic>)
          .map((e) => Database.fromJson(e as Map<String, dynamic>))
          .toList(),
      unreachable: (json['unreachable'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$DataBaseListToJson(DataBaseList instance) =>
    <String, dynamic>{
      'databases': instance.databases,
      'unreachable': instance.unreachable,
    };

Database _$DatabaseFromJson(Map<String, dynamic> json) => Database(
      database:
          DatabaseClass.fromJson(json['Database'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DatabaseToJson(Database instance) => <String, dynamic>{
      'Database': instance.database,
    };

DatabaseClass _$DatabaseClassFromJson(Map<String, dynamic> json) =>
    DatabaseClass();

Map<String, dynamic> _$DatabaseClassToJson(DatabaseClass instance) =>
    <String, dynamic>{};
