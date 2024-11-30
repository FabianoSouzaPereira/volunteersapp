import 'package:volunteersapp/domain/entities/privacy_entity.dart';
import 'package:volunteersapp/domain/entities/security_entity.dart';

abstract class AccountSettingsEntity {
  const AccountSettingsEntity();

  PrivacyEntity  get privacy;
  SecurityEntity get  security;
}