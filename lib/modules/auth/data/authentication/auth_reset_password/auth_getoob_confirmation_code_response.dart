import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

GetOobConfirmationCodeResponse getOobConfirmationCodeResponseFromJson(String str) => GetOobConfirmationCodeResponse.fromJson(json.decode(str));

String getOobConfirmationCodeResponseToJson(GetOobConfirmationCodeResponse data) => json.encode(data.toJson());

@JsonSerializable()
class GetOobConfirmationCodeResponse {
  @JsonKey(name: "email")
  final String email;

  GetOobConfirmationCodeResponse({
    required this.email,
  });

  GetOobConfirmationCodeResponse copyWith({
    String? email,
  }) =>
      GetOobConfirmationCodeResponse(
        email: email ?? this.email,
      );

  factory GetOobConfirmationCodeResponse.fromJson(Map<String, dynamic> json) => GetOobConfirmationCodeResponse(
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
      };
}

enum GetOobConfirmationCodeError {
  EMAIL_NOT_FOUND,
}
