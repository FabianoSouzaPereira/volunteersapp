import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

Token tokenFromJson(String str) => Token.fromJson(json.decode(str));

String tokenToJson(Token data) => json.encode(data.toJson());

@JsonSerializable()
class Token {
  @JsonKey(name: "expires_in")
  final String expiresIn;
  @JsonKey(name: "token_type")
  final String tokenType;
  @JsonKey(name: "refresh_token")
  final String refreshToken;
  @JsonKey(name: "id_token")
  final String idToken;
  @JsonKey(name: "user_id")
  final String userId;
  @JsonKey(name: "project_id")
  final String projectId;

  Token({
    required this.expiresIn,
    required this.tokenType,
    required this.refreshToken,
    required this.idToken,
    required this.userId,
    required this.projectId,
  });

  Token copyWith({
    String? expiresIn,
    String? tokenType,
    String? refreshToken,
    String? idToken,
    String? userId,
    String? projectId,
  }) =>
      Token(
        expiresIn: expiresIn ?? this.expiresIn,
        tokenType: tokenType ?? this.tokenType,
        refreshToken: refreshToken ?? this.refreshToken,
        idToken: idToken ?? this.idToken,
        userId: userId ?? this.userId,
        projectId: projectId ?? this.projectId,
      );

  factory Token.fromJson(Map<String, dynamic> json) => Token(
        expiresIn: json["expires_in"],
        tokenType: json["token_type"],
        refreshToken: json["refresh_token"],
        idToken: json["id_token"],
        userId: json["user_id"],
        projectId: json["project_id"],
      );

  Map<String, dynamic> toJson() => {
        "expires_in": expiresIn,
        "token_type": tokenType,
        "refresh_token": refreshToken,
        "id_token": idToken,
        "user_id": userId,
        "project_id": projectId,
      };
}

enum AuthTokenError {
  TOKEN_EXPIRED,
  USER_DISABLED,
  USER_NOT_FOUND,
  INVALID_REFRESH_TOKEN,
  INVALID_GRANT_TYPE,
  MISSING_REFRESH_TOKEN,
  PROJECT_NUMBER_MISMATCH,
}
