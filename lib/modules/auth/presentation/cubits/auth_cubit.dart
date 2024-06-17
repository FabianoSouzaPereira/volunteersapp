import 'package:bloc/bloc.dart';
import 'package:volunteersapp/modules/auth/domain/usecases/auth_use_case.dart';
import 'package:volunteersapp/modules/auth/presentation/state/auth_page_state.dart';

class AuthCubit extends Cubit<AuthPageState> {
  final AuthUseCase loginUseCase;

  AuthCubit(this.loginUseCase) : super(AuthPageStateInitial());

  Future<void> signUp(String email, String password, bool returnSecureToken) async {
    emit(AuthPageLoading());
    try {
      final success = await loginUseCase.signUp(email, password, returnSecureToken);

      if (success.data != null) {
        emit(AuthPageLoaded(listAuthLogin: const []));
      } else {
        emit(AuthPageError('Failed to login'));
      }
    } catch (e) {
      emit(AuthPageError(e.toString()));
    }
  }

  Future<void> signInWithEmailAndPassword(String email, String password, bool returnSecureToken) async {
    emit(AuthPageLoading());
    try {
      final success = await loginUseCase.signInWithEmailAndPassword(email, password, returnSecureToken);

      if (success.data != null) {
        emit(AuthPageLoaded(listAuthLogin: const []));
      } else {
        emit(AuthPageError('Failed to login'));
      }
    } catch (e) {
      emit(AuthPageError(e.toString()));
    }
  }
}

class AuthPageError extends AuthPageState {
  final String errorMessage;

  AuthPageError(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
