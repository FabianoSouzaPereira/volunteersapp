import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:volunteersapp/core/router/paths.dart' as paths;

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Página não encontrada')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Text('A página que você procura não foi encontrada.'),
            GestureDetector(
              child: const Text("voltar para home",
                  style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline)),
              onTap: () {
                GoRouter.of(context).go(paths.HomePagePath);
              },
            ),
          ],
        ),
      ),
    );
  }
}
