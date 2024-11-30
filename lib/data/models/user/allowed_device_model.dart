import 'package:json_annotation/json_annotation.dart';
import 'package:volunteersapp/domain/entities/alowed_device_entity.dart';

part 'allowed_device_model.g.dart';

@JsonSerializable()
final class AllowedDeviceModel extends AllowedDeviceEntity {
  const AllowedDeviceModel({
      required this.deviceId,
      required this.deviceType,
      required this.lastAccess,
  });
  
  @override
  final String deviceId;

  @override
  final String deviceType;

  @override
  final DateTime lastAccess;

  factory AllowedDeviceModel.fromJson(Map<String, dynamic> json) => _$AllowedDeviceModelFromJson(json);

  Map<String, dynamic> toJson() => _$AllowedDeviceModelToJson(this);
}