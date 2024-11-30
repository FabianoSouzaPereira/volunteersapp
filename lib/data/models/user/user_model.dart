import 'package:json_annotation/json_annotation.dart';
import 'package:volunteersapp/data/models/user/account_settings_model.dart';
import 'package:volunteersapp/data/models/commons/address_model.dart';
import 'package:volunteersapp/data/models/commons/phone_number_model.dart';
import 'package:volunteersapp/data/models/user/preferences_model.dart';

part 'user_model.g.dart';

@JsonSerializable()
final class UserModel {
  UserModel({
      this.userId = '',
      this.username = '',
      this.email = '',
      this.fullName = '',
      this.profilePicture = '',
      this.bio = '',
      DateTime? dateOfBirth,
      this.gender = '',
      this.address = const AddressModel(),
      this.phoneNumbers = const <PhoneNumberModel>[],
      this.preferences = const PreferencesModel(),
      this.accountSettings = const AccountSettingsModel(),
      DateTime? createdAt,
      DateTime? updatedAt,
  }): dateOfBirth = dateOfBirth ?? DateTime(1970, 1, 1),
      createdAt = createdAt ?? DateTime(1970, 1, 1),
      updatedAt = updatedAt ?? DateTime(1970, 1, 1);

  final String userId;
  final String username;
  final String email;
  final String fullName;
  final String profilePicture;
  final String bio;
  final DateTime dateOfBirth;
  final String gender;
  final AddressModel address;
  final List<PhoneNumberModel> phoneNumbers;
  final PreferencesModel preferences;
  final AccountSettingsModel accountSettings;
  final DateTime createdAt;
  final DateTime updatedAt;


  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}