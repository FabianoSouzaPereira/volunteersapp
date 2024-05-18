import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:volunteersapp/presentation/widgets/reorderableListWidget.dart';
import 'package:volunteersapp/core/router/paths.dart' as paths;

class UserPage extends StatelessWidget {
  const UserPage({
    super.key,
    required String title,
    isOption1Selected,
    isOption2Selected,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          title: const Text(
            "User",
            style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.transparent,
          child: Container(
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: ReorderableListWidget(
                      items: [
                        GestureDetector(
                          child: const Text(
                            "voltar para home",
                            style: TextStyle(
                              color: Colors.blue, // Cor do texto
                              decoration: TextDecoration.underline, // Adiciona sublinhado para indicar clique
                            ),
                          ),
                          onTap: () {
                            GoRouter.of(context).go(paths.HomePagePath);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
