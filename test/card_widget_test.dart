import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:volunteersapp/presentation/home/widgets/card_cubit.dart';
import 'package:volunteersapp/main.dart';

import 'MockApiConfig.dart'; // Importe aqui o seu MyApp

// Mock de CardCubit usando o Mockito
class MockCardCubit extends Mock implements CardCubit {}

void main() {
  testWidgets('Teste de renderização do widget fornecido por CardCubit', (WidgetTester tester) async {
    // Criar um mock de CardCubit
    final cardCubit = MockCardCubit();

    // Configurar comportamento do mock (se necessário)
    // when(cardCubit.método()).thenReturn(valor_esperado);

    // Construir o widget MyApp com o mock de CardCubit dentro de um Provider
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Provider<CardCubit>.value(
            value: cardCubit,
            child: MyApp(apiConfig: MockApiConfig()),
          ),
        ),
      ),
    );

    // Verificar se o widget fornecido por CardCubit está sendo renderizado corretamente
    expect(find.byKey(const Key('card_widget_key')), findsOneWidget);
  });
}
