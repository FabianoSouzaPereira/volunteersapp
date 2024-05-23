import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'ttl_config_delta.g.dart';

TtlConfigDelta ttlConfigDeltaFromJson(String str) => TtlConfigDelta.fromJson(json.decode(str));

String ttlConfigDeltaToJson(TtlConfigDelta data) => json.encode(data.toJson());

@JsonSerializable()
class TtlConfigDelta {
  @JsonKey(name: "changeType")
  final String changeType;

  TtlConfigDelta({
    required this.changeType,
  });

  TtlConfigDelta copyWith({
    String? changeType,
  }) =>
      TtlConfigDelta(
        changeType: changeType ?? this.changeType,
      );

  factory TtlConfigDelta.fromJson(Map<String, dynamic> json) => _$TtlConfigDeltaFromJson(json);

  Map<String, dynamic> toJson() => _$TtlConfigDeltaToJson(this);
}

enum ChangeType {
  value,
}
