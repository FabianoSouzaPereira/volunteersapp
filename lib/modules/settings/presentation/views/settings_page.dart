import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:volunteersapp/presentation/widgets/reorderableListWidget.dart';
import 'package:volunteersapp/core/router/paths.dart' as paths;

class SettingsPage extends StatelessWidget {
  final String title;

  const SettingsPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          title: const Text(
            "Settings",
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
            ),
          ),
        ),
      ),
    );
  }
}
