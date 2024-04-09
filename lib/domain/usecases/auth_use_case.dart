import 'package:volunteersapp/data/auth/remote_repository/auth_repository_impl.dart';

class AuthUseCase {
  final AuthRepositoryImpl _authRepository;

  AuthUseCase(this._authRepository);

  Future<bool> execute(String email, String password, bool returnSecureToken) async {
    try {
      final success = await _authRepository.signInWithEmailAndPassword(email, password, returnSecureToken);
      return success.data?.email != null;
    } catch (e) {
      rethrow;
    }
  }
}
