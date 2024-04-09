import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:volunteersapp/presentation/settings/settings_cubit.dart';
import 'package:volunteersapp/main.dart';

import 'MockApiConfig.dart';

class MockSettingsCubit extends Mock implements SettingsCubit {}

void main() {
  testWidgets('Teste de renderização do widget fornecido por SettingsCubit',
      (WidgetTester tester) async {
    final settingsCubit = MockSettingsCubit();

    // Configurar comportamento do mock (se necessário)
    // when(settingsCubit.método()).thenReturn(valor_esperado);

    // Construir o widget MyApp com o mock de SettingsCubit dentro de um Provider
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Provider<SettingsCubit>.value(
            value: settingsCubit,
            child: MyApp(apiConfig: MockApiConfig()),
          ),
        ),
      ),
    );

    // Verificar se o widget fornecido por SettingsCubit está sendo renderizado corretamente
    expect(find.byKey(const Key('settings_widget_key')), findsOneWidget);
  });
}
