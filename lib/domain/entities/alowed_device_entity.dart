abstract class AllowedDeviceEntity {
  const AllowedDeviceEntity();

  String get deviceId;
  String get deviceType;
  DateTime get lastAccess;
}