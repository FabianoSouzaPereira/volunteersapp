// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      userId: json['userId'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      fullName: json['fullName'] as String,
      profilePicture: json['profilePicture'] as String,
      bio: json['bio'] as String,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      gender: json['gender'] as String,
      address: AddressModel.fromJson(json['address'] as Map<String, dynamic>),
      phoneNumbers: (json['phoneNumbers'] as List<dynamic>)
          .map((e) => PhoneNumberModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      preferences: PreferencesModel.fromJson(
          json['preferences'] as Map<String, dynamic>),
      accountSettings: AccountSettingsModel.fromJson(
          json['accountSettings'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'email': instance.email,
      'fullName': instance.fullName,
      'profilePicture': instance.profilePicture,
      'bio': instance.bio,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'gender': instance.gender,
      'address': instance.address,
      'phoneNumbers': instance.phoneNumbers,
      'preferences': instance.preferences,
      'accountSettings': instance.accountSettings,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
