import 'package:json_annotation/json_annotation.dart';
import 'package:volunteersapp/domain/entities/login_entity.dart';

part 'login_model.g.dart';

@JsonSerializable()
final class LoginModel extends LoginEntity {
  LoginModel({
        this.username = '',
        this.email = '',
        this.password = '',
        DateTime? lastLogin,
        this.accountStatus = '',
        this.twoFactorEnabled = false,
        this.twoFactorCode = 0,
        this.failedLoginAttempts = 0,
        DateTime? lastFailedAttempt,
    }): lastLogin = lastLogin ?? DateTime(1970, 1, 1),
        lastFailedAttempt = lastFailedAttempt ?? DateTime(1970, 1, 1);

  @override
  final String username;

  @override
  final String email;

  @override
  final String password;

  @override
  final DateTime lastLogin;

  @override
  final String accountStatus;

  @override
  final bool twoFactorEnabled;

  @override
  final dynamic twoFactorCode;

  @override
  final int failedLoginAttempts;

  @override
  final DateTime lastFailedAttempt;


  factory LoginModel.fromJson(Map<String, dynamic> json) => _$LoginModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}