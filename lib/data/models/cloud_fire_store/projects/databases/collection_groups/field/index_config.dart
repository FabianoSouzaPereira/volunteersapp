import 'package:json_annotation/json_annotation.dart';
import 'package:volunteersapp/data/models/cloud_fire_store/projects/databases/collection_groups/field/config.dart';

part 'index_config.g.dart';

@JsonSerializable()
class IndexConfig {
  @JsonKey(name: "IndexConfig")
  final Config indexConfig;

  IndexConfig({
    required this.indexConfig,
  });

  IndexConfig copyWith({
    Config? indexConfig,
  }) =>
      IndexConfig(
        indexConfig: indexConfig ?? this.indexConfig,
      );

  factory IndexConfig.fromJson(Map<String, dynamic> json) => _$IndexConfigFromJson(json);

  Map<String, dynamic> toJson() => _$IndexConfigToJson(this);
}
