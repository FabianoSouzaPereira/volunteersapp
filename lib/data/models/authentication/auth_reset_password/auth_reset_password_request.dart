import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

AuthResetPasswordRequest authResetPasswordRequestFromJson(String str) => AuthResetPasswordRequest.fromJson(json.decode(str));

String authResetPasswordRequestToJson(AuthResetPasswordRequest data) => json.encode(data.toJson());

@JsonSerializable()
class AuthResetPasswordRequest {
  @JsonKey(name: "oobCode")
  final String oobCode;

  AuthResetPasswordRequest({
    required this.oobCode,
  });

  AuthResetPasswordRequest copyWith({
    String? oobCode,
  }) =>
      AuthResetPasswordRequest(
        oobCode: oobCode ?? this.oobCode,
      );

  factory AuthResetPasswordRequest.fromJson(Map<String, dynamic> json) => AuthResetPasswordRequest(
        oobCode: json["oobCode"],
      );

  Map<String, dynamic> toJson() => {
        "oobCode": oobCode,
      };
}
