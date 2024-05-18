class AuthToken {
  final String key;
  final String token;
  final DateTime expiryDate;

  AuthToken({
    required this.key,
    required this.token,
    required this.expiryDate,
  });

  Map<String, dynamic> toMap() {
    return {
      'key': key,
      'token': token,
      'expiryDate': expiryDate.toIso8601String(),
    };
  }

  factory AuthToken.fromMap(Map<String, dynamic> map) {
    return AuthToken(
      key: map['key'],
      token: map['token'],
      expiryDate: DateTime.parse(map['expiryDate']),
    );
  }
}
