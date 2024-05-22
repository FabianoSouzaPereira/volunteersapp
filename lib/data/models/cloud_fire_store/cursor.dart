import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'cursor.g.dart';

Cursor cursorFromJson(String str) => Cursor.fromJson(json.decode(str));

String cursorToJson(Cursor data) => json.encode(data.toJson());

@JsonSerializable()
class Cursor {
  @JsonKey(name: "values")
  final List<dynamic> values;
  @JsonKey(name: "before")
  final bool before;

  Cursor({
    required this.values,
    required this.before,
  });

  Cursor copyWith({
    List<dynamic>? values,
    bool? before,
  }) =>
      Cursor(
        values: values ?? this.values,
        before: before ?? this.before,
      );

  factory Cursor.fromJson(Map<String, dynamic> json) => _$CursorFromJson(json);

  Map<String, dynamic> toJson() => _$CursorToJson(this);
}
