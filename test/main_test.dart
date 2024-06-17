import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:volunteersapp/Locator.dart';
import 'package:volunteersapp/core/utils/apiconfig.dart';
import 'package:volunteersapp/main.dart';
import 'package:volunteersapp/modules/auth/presentation/state/auth_page_state.dart';
import 'package:volunteersapp/modules/home/presentation/cubits/home_cubit.dart';
import 'package:volunteersapp/modules/home/presentation/state/home_page_state.dart';
import 'package:volunteersapp/modules/home/presentation/widgets/home_card.dart';
import 'package:volunteersapp/modules/notification/presentation/state/notification_page_state.dart';
import 'package:volunteersapp/modules/settings/presentation/state/settings_page_state.dart';
import 'package:volunteersapp/modules/work/presentation/state/work_page_state.dart';

import 'mock_config/custom_matcher.dart';
import 'mock_config/mocks.mocks.dart';

class MockApiConfig extends Mock implements ApiConfig {
  static Future<ApiConfig> load() async {
    return ApiConfig(
      apiBaseUrl: 'BASE_URL',
      apiServerName: 'API_SERVER_NAME',
      apiServerAuth: 'API_SERVER_AUTH',
      loginUrl: 'POST_SIGN_IN_WITH_PASSWORD',
      signupUrl: 'POST_SIGN_IN_WITH_PASSWORD',
    );
  }
}

void main() {
  final mockApiConfig = MockApiConfig();

  setUpAll(() async {
    SharedPreferences.setMockInitialValues({});
    await SharedPreferences.getInstance();
    getIt.registerSingleton<ApiConfig>(await MockApiConfig.load());

    getIt.allReady();
  });

  group('MyApp tests', () {
    late MockAuthUseCase mockAuthUseCase;
    late MockAbstractAuthLocalRepository mockAbstractAuthLocalRepository;
    late MockAbstractAuthRepository mockAbstractAuthRepository;
    late MockAuthCubit mockAuthCubit;
    late MockHomeCubit mockHomeCubit;
    late MockCardCubit mockCardCubit;
    late MockSettingsCubit mockSettingsCubit;
    late MockWorkCubit mockWorkCubit;
    late MockNotificationCubit mockNotificationCubit;

    setUpAll(() {
      mockAuthUseCase = MockAuthUseCase();
      mockAbstractAuthLocalRepository = MockAbstractAuthLocalRepository();
      mockAuthCubit = MockAuthCubit();
      mockHomeCubit = MockHomeCubit();
      mockCardCubit = MockCardCubit();
      mockSettingsCubit = MockSettingsCubit();
      mockWorkCubit = MockWorkCubit();
      mockNotificationCubit = MockNotificationCubit();
    });

    testWidgets('App initializes correctly', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp(apiConfig: mockApiConfig));

      await tester.pumpAndSettle();
      expect(find.byKey(Key('MaterialAppRouter')), findsOneWidget);

      when(mockAuthCubit.state).thenReturn(AuthPageStateInitial());
      expect(mockAuthCubit.state, isTypeWithMessage<AuthPageStateInitial>('AuthCubit initial state started'));

      when(mockHomeCubit.state).thenReturn(HomeInitial(cards));
      expect(mockHomeCubit.state, isTypeWithMessage<HomeInitial>('HomeCubit initial state started'));

      when(mockCardCubit.state).thenReturn([]);
      expect(mockCardCubit.state, isTypeWithMessage<List<HomeCard>>('CardCubit initial state started'));

      when(mockSettingsCubit.state).thenReturn(SettingsPageStateInitial());
      expect(mockSettingsCubit.state, isTypeWithMessage<SettingsPageStateInitial>('SettingsCubit initial state started'));

      when(mockWorkCubit.state).thenReturn(WorkStateInitial());
      expect(mockWorkCubit.state, isTypeWithMessage<WorkStateInitial>('WorkCubit initial state started'));

      when(mockNotificationCubit.state).thenReturn(NoticationPageInitial());
      expect(mockNotificationCubit.state, isTypeWithMessage<NoticationPageInitial>('NotificatonCubit initial state started'));
    });
  });
}
