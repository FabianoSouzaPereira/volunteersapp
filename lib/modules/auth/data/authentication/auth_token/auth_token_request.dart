import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

AuthTokenRequest tokenFromJson(String str) => AuthTokenRequest.fromJson(json.decode(str));

String tokenToJson(AuthTokenRequest data) => json.encode(data.toJson());

@JsonSerializable()
class AuthTokenRequest {
  @JsonKey(name: "grant_type")
  final String grantType;
  @JsonKey(name: "refresh_token")
  final String refreshToken;

  AuthTokenRequest({
    required this.grantType,
    required this.refreshToken,
  });

  AuthTokenRequest copyWith({
    String? grantType,
    String? refreshToken,
  }) =>
      AuthTokenRequest(
        grantType: grantType ?? this.grantType,
        refreshToken: refreshToken ?? this.refreshToken,
      );

  factory AuthTokenRequest.fromJson(Map<String, dynamic> json) => AuthTokenRequest(
        grantType: json["grant_type"],
        refreshToken: json["refresh_token"],
      );

  Map<String, dynamic> toJson() => {
        "grant_type": grantType,
        "refresh_token": refreshToken,
      };
}
