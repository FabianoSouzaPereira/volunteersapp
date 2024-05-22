import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'database.g.dart';

Database databaseFromJson(String str) => Database.fromJson(json.decode(str));

String databaseToJson(Database data) => json.encode(data.toJson());

@JsonSerializable()
class Database {
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "uid")
  final String uid;
  @JsonKey(name: "createTime")
  final String createTime;
  @JsonKey(name: "updateTime")
  final String updateTime;
  @JsonKey(name: "deleteTime")
  final String deleteTime;
  @JsonKey(name: "locationId")
  final String locationId;
  @JsonKey(name: "type")
  final Type type;
  @JsonKey(name: "concurrencyMode")
  final ConcurrencyMode concurrencyMode;
  @JsonKey(name: "versionRetentionPeriod")
  final String versionRetentionPeriod;
  @JsonKey(name: "earliestVersionTime")
  final String earliestVersionTime;
  @JsonKey(name: "pointInTimeRecoveryEnablement")
  final PointInTimeRecoveryEnablement pointInTimeRecoveryEnablement;
  @JsonKey(name: "appEngineIntegrationMode")
  final AppEngineIntegrationMode appEngineIntegrationMode;
  @JsonKey(name: "keyPrefix")
  final String keyPrefix;
  @JsonKey(name: "deleteProtectionState")
  final DeleteProtectionState deleteProtectionState;
  @JsonKey(name: "cmekConfig")
  final CmekConfig cmekConfig;
  @JsonKey(name: "previousId")
  final String previousId;
  @JsonKey(name: "etag")
  final String etag;

  Database({
    required this.name,
    required this.uid,
    required this.createTime,
    required this.updateTime,
    required this.deleteTime,
    required this.locationId,
    required this.type,
    required this.concurrencyMode,
    required this.versionRetentionPeriod,
    required this.earliestVersionTime,
    required this.pointInTimeRecoveryEnablement,
    required this.appEngineIntegrationMode,
    required this.keyPrefix,
    required this.deleteProtectionState,
    required this.cmekConfig,
    required this.previousId,
    required this.etag,
  });

  Database copyWith({
    String? name,
    String? uid,
    String? createTime,
    String? updateTime,
    String? deleteTime,
    String? locationId,
    Type? type,
    ConcurrencyMode? concurrencyMode,
    String? versionRetentionPeriod,
    String? earliestVersionTime,
    PointInTimeRecoveryEnablement? pointInTimeRecoveryEnablement,
    AppEngineIntegrationMode? appEngineIntegrationMode,
    String? keyPrefix,
    DeleteProtectionState? deleteProtectionState,
    CmekConfig? cmekConfig,
    String? previousId,
    String? etag,
  }) =>
      Database(
        name: name ?? this.name,
        uid: uid ?? this.uid,
        createTime: createTime ?? this.createTime,
        updateTime: updateTime ?? this.updateTime,
        deleteTime: deleteTime ?? this.deleteTime,
        locationId: locationId ?? this.locationId,
        type: type ?? this.type,
        concurrencyMode: concurrencyMode ?? this.concurrencyMode,
        versionRetentionPeriod: versionRetentionPeriod ?? this.versionRetentionPeriod,
        earliestVersionTime: earliestVersionTime ?? this.earliestVersionTime,
        pointInTimeRecoveryEnablement: pointInTimeRecoveryEnablement ?? this.pointInTimeRecoveryEnablement,
        appEngineIntegrationMode: appEngineIntegrationMode ?? this.appEngineIntegrationMode,
        keyPrefix: keyPrefix ?? this.keyPrefix,
        deleteProtectionState: deleteProtectionState ?? this.deleteProtectionState,
        cmekConfig: cmekConfig ?? this.cmekConfig,
        previousId: previousId ?? this.previousId,
        etag: etag ?? this.etag,
      );

  factory Database.fromJson(Map<String, dynamic> json) => _$DatabaseFromJson(json);

  Map<String, dynamic> toJson() => _$DatabaseToJson(this);
}

@JsonSerializable()
class AppEngineIntegrationMode {
  @JsonKey(name: "AppEngineIntegrationMode")
  final List<dynamic> appEngineIntegrationMode;

  AppEngineIntegrationMode({
    required this.appEngineIntegrationMode,
  });

  AppEngineIntegrationMode copyWith({
    List<dynamic>? appEngineIntegrationMode,
  }) =>
      AppEngineIntegrationMode(
        appEngineIntegrationMode: appEngineIntegrationMode ?? this.appEngineIntegrationMode,
      );

  factory AppEngineIntegrationMode.fromJson(Map<String, dynamic> json) => _$AppEngineIntegrationModeFromJson(json);

  Map<String, dynamic> toJson() => _$AppEngineIntegrationModeToJson(this);
}

@JsonSerializable()
class CmekConfig {
  @JsonKey(name: "CmekConfig")
  final CmekConfigClass cmekConfig;

  CmekConfig({
    required this.cmekConfig,
  });

  CmekConfig copyWith({
    CmekConfigClass? cmekConfig,
  }) =>
      CmekConfig(
        cmekConfig: cmekConfig ?? this.cmekConfig,
      );

  factory CmekConfig.fromJson(Map<String, dynamic> json) => _$CmekConfigFromJson(json);

  Map<String, dynamic> toJson() => _$CmekConfigToJson(this);
}

@JsonSerializable()
class CmekConfigClass {
  @JsonKey(name: "kmsKeyName")
  final String kmsKeyName;
  @JsonKey(name: "activeKeyVersion")
  final List<String> activeKeyVersion;

  CmekConfigClass({
    required this.kmsKeyName,
    required this.activeKeyVersion,
  });

  CmekConfigClass copyWith({
    String? kmsKeyName,
    List<String>? activeKeyVersion,
  }) =>
      CmekConfigClass(
        kmsKeyName: kmsKeyName ?? this.kmsKeyName,
        activeKeyVersion: activeKeyVersion ?? this.activeKeyVersion,
      );

  factory CmekConfigClass.fromJson(Map<String, dynamic> json) => _$CmekConfigClassFromJson(json);

  Map<String, dynamic> toJson() => _$CmekConfigClassToJson(this);
}

@JsonSerializable()
class ConcurrencyMode {
  @JsonKey(name: "ConcurrencyMode")
  final List<dynamic> concurrencyMode;

  ConcurrencyMode({
    required this.concurrencyMode,
  });

  ConcurrencyMode copyWith({
    List<dynamic>? concurrencyMode,
  }) =>
      ConcurrencyMode(
        concurrencyMode: concurrencyMode ?? this.concurrencyMode,
      );

  factory ConcurrencyMode.fromJson(Map<String, dynamic> json) => _$ConcurrencyModeFromJson(json);

  Map<String, dynamic> toJson() => _$ConcurrencyModeToJson(this);
}

@JsonSerializable()
class DeleteProtectionState {
  @JsonKey(name: "DeleteProtectionState")
  final List<dynamic> deleteProtectionState;

  DeleteProtectionState({
    required this.deleteProtectionState,
  });

  DeleteProtectionState copyWith({
    List<dynamic>? deleteProtectionState,
  }) =>
      DeleteProtectionState(
        deleteProtectionState: deleteProtectionState ?? this.deleteProtectionState,
      );

  factory DeleteProtectionState.fromJson(Map<String, dynamic> json) => _$DeleteProtectionStateFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteProtectionStateToJson(this);
}

@JsonSerializable()
class PointInTimeRecoveryEnablement {
  @JsonKey(name: "PointInTimeRecoveryEnablement")
  final List<dynamic> pointInTimeRecoveryEnablement;

  PointInTimeRecoveryEnablement({
    required this.pointInTimeRecoveryEnablement,
  });

  PointInTimeRecoveryEnablement copyWith({
    List<dynamic>? pointInTimeRecoveryEnablement,
  }) =>
      PointInTimeRecoveryEnablement(
        pointInTimeRecoveryEnablement: pointInTimeRecoveryEnablement ?? this.pointInTimeRecoveryEnablement,
      );

  factory PointInTimeRecoveryEnablement.fromJson(Map<String, dynamic> json) => _$PointInTimeRecoveryEnablementFromJson(json);

  Map<String, dynamic> toJson() => _$PointInTimeRecoveryEnablementToJson(this);
}

@JsonSerializable()
class Type {
  @JsonKey(name: "DatabaseType")
  final List<dynamic> databaseType;

  Type({
    required this.databaseType,
  });

  Type copyWith({
    List<dynamic>? databaseType,
  }) =>
      Type(
        databaseType: databaseType ?? this.databaseType,
      );

  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);

  Map<String, dynamic> toJson() => _$TypeToJson(this);
}
