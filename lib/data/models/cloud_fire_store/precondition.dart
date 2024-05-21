import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

Precondition preconditionFromJson(String str) => Precondition.fromJson(json.decode(str));

String preconditionToJson(Precondition data) => json.encode(data.toJson());

@JsonSerializable()
class Precondition {
  @JsonKey(name: "exists")
  final bool exists;
  @JsonKey(name: "updateTime")
  final String updateTime;

  Precondition({
    required this.exists,
    required this.updateTime,
  });

  Precondition copyWith({
    bool? exists,
    String? updateTime,
  }) =>
      Precondition(
        exists: exists ?? this.exists,
        updateTime: updateTime ?? this.updateTime,
      );

  factory Precondition.fromJson(Map<String, dynamic> json) => Precondition(
        exists: json["exists"],
        updateTime: json["updateTime"],
      );

  Map<String, dynamic> toJson() => {
        "exists": exists,
        "updateTime": updateTime,
      };
}
