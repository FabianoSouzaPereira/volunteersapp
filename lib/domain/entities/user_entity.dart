import 'package:volunteersapp/domain/entities/account_services_entity.dart';
import 'package:volunteersapp/domain/entities/address_entity.dart';
import 'package:volunteersapp/domain/entities/phone_number_entity.dart';
import 'package:volunteersapp/domain/entities/preferences_entity.dart';

abstract class UserEntity {
  const UserEntity();

    String get userId;
    String get username;
    String get email;
    String get fullName;
    String get profilePicture;
    String get bio;
    DateTime get dateOfBirth;
    String get gender;
    AddressEntity get address;
    List<PhoneNumberEntity> get phoneNumbers;
    PreferencesEntity get preferences;
    AccountSettingsEntity get accountSettings;
    DateTime get createdAt;
    DateTime get updatedAt;
}