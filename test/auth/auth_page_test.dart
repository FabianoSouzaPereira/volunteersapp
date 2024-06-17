import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:volunteersapp/modules/auth/data/authentication/auth_login_model.dart';
import 'package:volunteersapp/modules/auth/presentation/state/auth_page_state.dart';
import '../mock_config/custom_matcher.dart';
import '../mock_config/mocks.mocks.dart';

void main() {
  group('AuthCubit Tests', () {
    late MockAuthCubit mockAuthCubit;
    final List<AuthLoginModel> listAuthLogin = [
      AuthLoginModel(email: "teste1@email.com", password: "1234", returnSecureToken: true),
      AuthLoginModel(email: "teste2@email.com", password: "1235", returnSecureToken: true)
    ];

    setUp(() {
      mockAuthCubit = MockAuthCubit();
    });

    test('AuthCubit should be in initial state', () {
      when(mockAuthCubit.state).thenReturn(AuthPageStateInitial());

      expect(mockAuthCubit.state, isTypeWithMessage<AuthPageStateInitial>('AuthCubit initial state complited'));
    });

    test('AuthCubit loaded state is charged', () {
      when(mockAuthCubit.state).thenReturn(AuthPageLoaded(listAuthLogin: listAuthLogin));

      final currentState = mockAuthCubit.state;

      expect(currentState, isTypeWithMessage<AuthPageLoaded>('Loaded state is complited'));

      if (currentState is AuthPageLoaded) {
        expect(currentState.listAuthLogin, equals(listAuthLogin));
      }
    });
  });
}
