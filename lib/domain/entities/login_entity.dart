abstract class LoginEntity {
  const LoginEntity();

  String get username;
  String get email;
  String get password;
  DateTime get lastLogin;
  String get accountStatus;
  bool get twoFactorEnabled;
  dynamic get twoFactorCode;
  int get failedLoginAttempts;
  DateTime get lastFailedAttempt;
}