import 'package:bloc/bloc.dart';
import 'package:volunteersapp/domain/usecases/auth_use_case.dart';
import 'package:volunteersapp/presentation/auth/auth_page_state.dart';

class AuthCubit extends Cubit<AuthPageState> {
  // final AuthUseCase loginUseCase;

  AuthCubit() : super(AuthPageStateInitial());

  Future<void> signInWithEmailAndPassword(String email, String password, bool returnSecureToken) async {
    emit(AuthPageLoading());
    try {
      // final success = await loginUseCase.execute(email, password, returnSecureToken);

      //  if (success) {
      //     emit(AuthPageLoaded(listAuthLogin: const []));
      //   } else {
      //      emit(AuthPageError('Failed to login'));
      //    }
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
