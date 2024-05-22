import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'apple_signin_config.g.dart'; // direrive to create g.dart files

AppleSignInConfig appleSignInConfigFromJson(String str) => AppleSignInConfig.fromJson(json.decode(str));

String appleSignInConfigToJson(AppleSignInConfig data) => json.encode(data.toJson());

@JsonSerializable()
class AppleSignInConfig {
  @JsonKey(name: "clientId")
  final String clientId;

  @JsonKey(name: "teamId")
  final String teamId;

  @JsonKey(name: "keyId")
  final String keyId;

  @JsonKey(name: "privateKey")
  final String privateKey;

  AppleSignInConfig({
    required this.clientId,
    required this.teamId,
    required this.keyId,
    required this.privateKey,
  });

  AppleSignInConfig copyWith({
    String? clientId,
    String? teamId,
    String? keyId,
    String? privateKey,
  }) =>
      AppleSignInConfig(
        clientId: clientId ?? this.clientId,
        teamId: teamId ?? this.teamId,
        keyId: keyId ?? this.keyId,
        privateKey: privateKey ?? this.privateKey,
      );

  factory AppleSignInConfig.fromJson(Map<String, dynamic> json) => _$AppleSignInConfigFromJson(json);

  Map<String, dynamic> toJson() => _$AppleSignInConfigToJson(this);
}
