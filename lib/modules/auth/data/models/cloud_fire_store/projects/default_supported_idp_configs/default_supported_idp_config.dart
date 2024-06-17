import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:volunteersapp/modules/auth/data/models/cloud_fire_store/projects/default_supported_idp_configs/apple_signin_config.dart';

part 'default_supported_idp_config.g.dart'; // direrive to create g.dart files

DefaultSupportedIdpConfig defaultSupportedIdpConfigFromJson(String str) => DefaultSupportedIdpConfig.fromJson(json.decode(str));
String defaultSupportedIdpConfigToJson(DefaultSupportedIdpConfig data) => json.encode(data.toJson());

@JsonSerializable()
class DefaultSupportedIdpConfig {
  @JsonKey(name: "name")
  final String name;

  @JsonKey(name: "enabled")
  final bool enabled;

  @JsonKey(name: "clientId")
  final String clientId;

  @JsonKey(name: "clientSecret")
  final String clientSecret;

  @JsonKey(name: "appleSignInConfig")
  final AppleSignInConfig appleSignInConfig;

  DefaultSupportedIdpConfig({
    required this.name,
    required this.enabled,
    required this.clientId,
    required this.clientSecret,
    required this.appleSignInConfig,
  });

  DefaultSupportedIdpConfig copyWith({
    String? name,
    bool? enabled,
    String? clientId,
    String? clientSecret,
    AppleSignInConfig? appleSignInConfig,
  }) =>
      DefaultSupportedIdpConfig(
        name: name ?? this.name,
        enabled: enabled ?? this.enabled,
        clientId: clientId ?? this.clientId,
        clientSecret: clientSecret ?? this.clientSecret,
        appleSignInConfig: appleSignInConfig ?? this.appleSignInConfig,
      );

  factory DefaultSupportedIdpConfig.fromJson(Map<String, dynamic> json) => _$DefaultSupportedIdpConfigFromJson(json);

  Map<String, dynamic> toJson() => _$DefaultSupportedIdpConfigToJson(this);
}
