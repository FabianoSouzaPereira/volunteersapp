import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'document.g.dart';

Document documentFromJson(String str) => Document.fromJson(json.decode(str));

String documentToJson(Document data) => json.encode(data.toJson());

@JsonSerializable()
class Document {
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "fields")
  final Fields fields;
  @JsonKey(name: "createTime")
  final String createTime;
  @JsonKey(name: "updateTime")
  final String updateTime;

  Document({
    required this.name,
    required this.fields,
    required this.createTime,
    required this.updateTime,
  });

  Document copyWith({
    String? name,
    Fields? fields,
    String? createTime,
    String? updateTime,
  }) =>
      Document(
        name: name ?? this.name,
        fields: fields ?? this.fields,
        createTime: createTime ?? this.createTime,
        updateTime: updateTime ?? this.updateTime,
      );

  factory Document.fromJson(Map<String, dynamic> json) => _$DocumentFromJson(json);

  Map<String, dynamic> toJson() => _$DocumentToJson(this);
}

@JsonSerializable()
class Fields {
  @JsonKey(name: "string")
  final StringClass string;

  Fields({
    required this.string,
  });

  Fields copyWith({
    StringClass? string,
  }) =>
      Fields(
        string: string ?? this.string,
      );

  factory Fields.fromJson(Map<String, dynamic> json) => _$FieldsFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsToJson(this);
}

@JsonSerializable()
class StringClass {
  @JsonKey(name: "value")
  final Value value;

  StringClass({
    required this.value,
  });

  StringClass copyWith({
    Value? value,
  }) =>
      StringClass(
        value: value ?? this.value,
      );

  factory StringClass.fromJson(Map<String, dynamic> json) => _$StringClassFromJson(json);

  Map<String, dynamic> toJson() => _$StringClassToJson(this);
}

@JsonSerializable()
class Value {
  Value();

  Value copyWith() => Value();

  factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);

  Map<String, dynamic> toJson() => _$ValueToJson(this);
}
