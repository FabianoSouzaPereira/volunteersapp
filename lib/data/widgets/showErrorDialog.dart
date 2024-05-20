// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorDialog extends StatelessWidget {
  final String message;

  const ErrorDialog({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Erro de Servidor'),
      content: Text(message),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
