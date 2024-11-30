import 'package:json_annotation/json_annotation.dart';
import 'package:volunteersapp/data/models/user/allowed_device_model.dart';
import 'package:volunteersapp/domain/entities/security_entity.dart';

part 'security_model.g.dart';

@JsonSerializable()
final class SecurityModel extends SecurityEntity {
  const SecurityModel({
      this.twoFactorAuth = false,
      this.loginAlerts = false,
      this.allowedDevices = const <AllowedDeviceModel>[],
  });

  @override
  final bool twoFactorAuth;

  @override
  final bool loginAlerts;

  @override
  final List<AllowedDeviceModel> allowedDevices;

  factory SecurityModel.fromJson(Map<String, dynamic> json) => _$SecurityModelFromJson(json);

  Map<String, dynamic> toJson() => _$SecurityModelToJson(this);
}