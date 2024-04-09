// ignore_for_file: file_names

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:volunteersapp/core/utils/apiconfig.dart';
import 'package:volunteersapp/main.dart';

class MockApiConfig extends Mock implements ApiConfig {}

void main() {
  testWidgets('MyApp initializes correctly', (WidgetTester tester) async {
    final apiConfig = MockApiConfig();

    // Configurando comportamento do mock (se necessário)
    // Exemplo: quando chamado apiConfig.method(), retorne um valor específico
    // when(apiConfig.method()).thenReturn(valor_esperado);

    // Construindo o widget MyApp com o mock de ApiConfig
    await tester.pumpWidget(MyApp(apiConfig: apiConfig));

    // Verificando se o título é renderizado corretamente
    expect(find.text('Volunteers'), findsOneWidget);
  });
}
