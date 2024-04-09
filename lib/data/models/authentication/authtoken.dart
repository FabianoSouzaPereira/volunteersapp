class AuthToken {
  final String token;
  final DateTime expiryDate;

  AuthToken({
    required this.token,
    required this.expiryDate,
  });
}
