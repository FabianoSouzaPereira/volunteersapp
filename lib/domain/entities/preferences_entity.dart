import 'package:volunteersapp/domain/entities/notification.dart';

abstract class PreferencesEntity {
  const PreferencesEntity();
  
  String get language;
  String get timezone;
  NotificationsEntity get notifications;
}