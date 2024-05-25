class AuthLoginEntity {
  final String email;
  final String password;
  final bool returnSecureToken;

  AuthLoginEntity({
    required this.email,
    required this.password,
    required this.returnSecureToken,
  });
}
