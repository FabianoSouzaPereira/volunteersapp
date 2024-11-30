import 'package:volunteersapp/domain/entities/alowed_device_entity.dart';

abstract class SecurityEntity {
  const SecurityEntity();

  bool get twoFactorAuth;
  bool get loginAlerts;
  List<AllowedDeviceEntity> get allowedDevices;
}