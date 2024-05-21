import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

CreateAuthUriResponse createAuthUriResponseFromJson(String str) => CreateAuthUriResponse.fromJson(json.decode(str));

String createAuthUriResponseToJson(CreateAuthUriResponse data) => json.encode(data.toJson());

@JsonSerializable()
class CreateAuthUriResponse {
  @JsonKey(name: "allProviders")
  final List<String> allProviders;
  @JsonKey(name: "registered")
  final bool registered;

  CreateAuthUriResponse({
    required this.allProviders,
    required this.registered,
  });

  CreateAuthUriResponse copyWith({
    List<String>? allProviders,
    bool? registered,
  }) =>
      CreateAuthUriResponse(
        allProviders: allProviders ?? this.allProviders,
        registered: registered ?? this.registered,
      );

  factory CreateAuthUriResponse.fromJson(Map<String, dynamic> json) => CreateAuthUriResponse(
        allProviders: List<String>.from(json["allProviders"].map((x) => x)),
        registered: json["registered"],
      );

  Map<String, dynamic> toJson() => {
        "allProviders": List<dynamic>.from(allProviders.map((x) => x)),
        "registered": registered,
      };
}

enum CreateAuthUriResponseError {
  INVALID_EMAIL,
}
