import 'package:json_annotation/json_annotation.dart';
import 'package:volunteersapp/data/models/user/privacy_model.dart';
import 'package:volunteersapp/data/models/user/security_model.dart';
import 'package:volunteersapp/domain/entities/account_services_entity.dart';

part 'account_settings_model.g.dart';

@JsonSerializable()
final class AccountSettingsModel extends AccountSettingsEntity {
    const AccountSettingsModel({
        this.privacy = const PrivacyModel(),
        this.security = const SecurityModel()
    });

  @override
  final PrivacyModel privacy;

  @override
  final SecurityModel security;
    
  factory AccountSettingsModel.fromJson(Map<String, dynamic> json) => _$AccountSettingsModelFromJson(json);

  Map<String, dynamic> toJson() => _$AccountSettingsModelToJson(this);
}