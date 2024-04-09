class SignInWithCustomToken {
  final String idToken;
  final String refreshToken;
  final String expiresIn;

  SignInWithCustomToken({
    required this.idToken, 
    required this.refreshToken, 
    required this.expiresIn
  });
}
