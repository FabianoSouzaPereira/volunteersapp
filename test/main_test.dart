import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:volunteersapp/Locator.dart';
import 'package:volunteersapp/core/utils/apiconfig.dart';
import 'package:volunteersapp/main.dart';
import 'package:volunteersapp/presentation/auth/auth_cubit.dart';
import 'package:volunteersapp/presentation/home/home_cubit.dart';
import 'package:volunteersapp/presentation/home/widgets/card_cubit.dart';
import 'package:volunteersapp/presentation/settings/settings_cubit.dart';
import 'package:volunteersapp/presentation/work/work_cubit.dart';

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

  setUp(() async {
    setupLocator();
  });

  testWidgets('App initializes correctly', (WidgetTester tester) async {
    // Build the widget tree
    await tester.pumpWidget(MultiProvider(
      providers: [
        Provider<AuthCubit>(
          create: (_) => getIt.get<AuthCubit>(),
        ),
        Provider<HomeCubit>(
          create: (_) => getIt.get<HomeCubit>(),
        ),
        Provider<CardCubit>(
          create: (_) => getIt.get<CardCubit>(),
        ),
        Provider<SettingsCubit>(
          create: (_) => getIt.get<SettingsCubit>(),
        ),
        Provider<WorkCubit>(
          create: (_) => getIt.get<WorkCubit>(),
        ),
      ],
      child: Builder(
        builder: (_) => MyApp(
          apiConfig: mockApiConfig,
        ),
      ),
    ));

    // Expectations
    expect(find.byKey(Key('WidgetTester')), findsOneWidget);

    expect(Provider.of<AuthCubit>(tester.element(find.byType(MyApp))), isA<AuthCubit>());
    expect(Provider.of<HomeCubit>(tester.element(find.byType(MyApp))), isA<HomeCubit>());
    // Repeat for other cubits

    final app = find.byType(MyApp).evaluate().single.widget as MyApp;
    expect(app.apiConfig.apiBaseUrl, 'BASE_URL');
    expect(app.apiConfig.apiServerName, 'API_SERVER_NAME');
    // Repeat for other fields of API configuration
  });
}
