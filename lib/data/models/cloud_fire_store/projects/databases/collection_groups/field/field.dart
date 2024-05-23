import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

import 'package:volunteersapp/data/models/cloud_fire_store/projects/databases/collection_groups/field/index_config.dart';
import 'package:volunteersapp/data/models/cloud_fire_store/projects/databases/collection_groups/field/ttl_config.dart';

part 'field.g.dart';

Field fieldFromJson(String str) => Field.fromJson(json.decode(str));

String fieldToJson(Field data) => json.encode(data.toJson());

@JsonSerializable()
class Field {
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "indexConfig")
  final IndexConfig indexConfig;
  @JsonKey(name: "ttlConfig")
  final TtlConfig ttlConfig;

  Field({
    required this.name,
    required this.indexConfig,
    required this.ttlConfig,
  });

  Field copyWith({
    String? name,
    IndexConfig? indexConfig,
    TtlConfig? ttlConfig,
  }) =>
      Field(
        name: name ?? this.name,
        indexConfig: indexConfig ?? this.indexConfig,
        ttlConfig: ttlConfig ?? this.ttlConfig,
      );

  factory Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);

  Map<String, dynamic> toJson() => _$FieldToJson(this);
}
