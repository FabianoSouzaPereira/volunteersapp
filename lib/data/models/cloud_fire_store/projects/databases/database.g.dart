// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Database _$DatabaseFromJson(Map<String, dynamic> json) => Database(
      name: json['name'] as String,
      uid: json['uid'] as String,
      createTime: json['createTime'] as String,
      updateTime: json['updateTime'] as String,
      deleteTime: json['deleteTime'] as String,
      locationId: json['locationId'] as String,
      type: Type.fromJson(json['type'] as Map<String, dynamic>),
      concurrencyMode: ConcurrencyMode.fromJson(
          json['concurrencyMode'] as Map<String, dynamic>),
      versionRetentionPeriod: json['versionRetentionPeriod'] as String,
      earliestVersionTime: json['earliestVersionTime'] as String,
      pointInTimeRecoveryEnablement: PointInTimeRecoveryEnablement.fromJson(
          json['pointInTimeRecoveryEnablement'] as Map<String, dynamic>),
      appEngineIntegrationMode: AppEngineIntegrationMode.fromJson(
          json['appEngineIntegrationMode'] as Map<String, dynamic>),
      keyPrefix: json['keyPrefix'] as String,
      deleteProtectionState: DeleteProtectionState.fromJson(
          json['deleteProtectionState'] as Map<String, dynamic>),
      cmekConfig:
          CmekConfig.fromJson(json['cmekConfig'] as Map<String, dynamic>),
      previousId: json['previousId'] as String,
      etag: json['etag'] as String,
    );

Map<String, dynamic> _$DatabaseToJson(Database instance) => <String, dynamic>{
      'name': instance.name,
      'uid': instance.uid,
      'createTime': instance.createTime,
      'updateTime': instance.updateTime,
      'deleteTime': instance.deleteTime,
      'locationId': instance.locationId,
      'type': instance.type,
      'concurrencyMode': instance.concurrencyMode,
      'versionRetentionPeriod': instance.versionRetentionPeriod,
      'earliestVersionTime': instance.earliestVersionTime,
      'pointInTimeRecoveryEnablement': instance.pointInTimeRecoveryEnablement,
      'appEngineIntegrationMode': instance.appEngineIntegrationMode,
      'keyPrefix': instance.keyPrefix,
      'deleteProtectionState': instance.deleteProtectionState,
      'cmekConfig': instance.cmekConfig,
      'previousId': instance.previousId,
      'etag': instance.etag,
    };

AppEngineIntegrationMode _$AppEngineIntegrationModeFromJson(
        Map<String, dynamic> json) =>
    AppEngineIntegrationMode(
      appEngineIntegrationMode:
          json['AppEngineIntegrationMode'] as List<dynamic>,
    );

Map<String, dynamic> _$AppEngineIntegrationModeToJson(
        AppEngineIntegrationMode instance) =>
    <String, dynamic>{
      'AppEngineIntegrationMode': instance.appEngineIntegrationMode,
    };

CmekConfig _$CmekConfigFromJson(Map<String, dynamic> json) => CmekConfig(
      cmekConfig:
          CmekConfigClass.fromJson(json['CmekConfig'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CmekConfigToJson(CmekConfig instance) =>
    <String, dynamic>{
      'CmekConfig': instance.cmekConfig,
    };

CmekConfigClass _$CmekConfigClassFromJson(Map<String, dynamic> json) =>
    CmekConfigClass(
      kmsKeyName: json['kmsKeyName'] as String,
      activeKeyVersion: (json['activeKeyVersion'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CmekConfigClassToJson(CmekConfigClass instance) =>
    <String, dynamic>{
      'kmsKeyName': instance.kmsKeyName,
      'activeKeyVersion': instance.activeKeyVersion,
    };

ConcurrencyMode _$ConcurrencyModeFromJson(Map<String, dynamic> json) =>
    ConcurrencyMode(
      concurrencyMode: json['ConcurrencyMode'] as List<dynamic>,
    );

Map<String, dynamic> _$ConcurrencyModeToJson(ConcurrencyMode instance) =>
    <String, dynamic>{
      'ConcurrencyMode': instance.concurrencyMode,
    };

DeleteProtectionState _$DeleteProtectionStateFromJson(
        Map<String, dynamic> json) =>
    DeleteProtectionState(
      deleteProtectionState: json['DeleteProtectionState'] as List<dynamic>,
    );

Map<String, dynamic> _$DeleteProtectionStateToJson(
        DeleteProtectionState instance) =>
    <String, dynamic>{
      'DeleteProtectionState': instance.deleteProtectionState,
    };

PointInTimeRecoveryEnablement _$PointInTimeRecoveryEnablementFromJson(
        Map<String, dynamic> json) =>
    PointInTimeRecoveryEnablement(
      pointInTimeRecoveryEnablement:
          json['PointInTimeRecoveryEnablement'] as List<dynamic>,
    );

Map<String, dynamic> _$PointInTimeRecoveryEnablementToJson(
        PointInTimeRecoveryEnablement instance) =>
    <String, dynamic>{
      'PointInTimeRecoveryEnablement': instance.pointInTimeRecoveryEnablement,
    };

Type _$TypeFromJson(Map<String, dynamic> json) => Type(
      databaseType: json['DatabaseType'] as List<dynamic>,
    );

Map<String, dynamic> _$TypeToJson(Type instance) => <String, dynamic>{
      'DatabaseType': instance.databaseType,
    };
