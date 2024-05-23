import 'package:json_annotation/json_annotation.dart';
import 'package:volunteersapp/data/models/cloud_fire_store/projects/databases/collection_groups/field/config.dart';

part 'ttl_config.g.dart';

@JsonSerializable()
class TtlConfig {
  @JsonKey(name: "TtlConfig")
  final Config ttlConfig;

  TtlConfig({
    required this.ttlConfig,
  });

  TtlConfig copyWith({
    Config? ttlConfig,
  }) =>
      TtlConfig(
        ttlConfig: ttlConfig ?? this.ttlConfig,
      );

  factory TtlConfig.fromJson(Map<String, dynamic> json) => _$TtlConfigFromJson(json);

  Map<String, dynamic> toJson() => _$TtlConfigToJson(this);
}
