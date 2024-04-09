import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BorderedCardWidgets extends StatelessWidget {
  final String route;
  final String title;
  final String? description;

  const BorderedCardWidgets({super.key, required this.title, this.description, required this.route});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      shadowColor: Colors.blue[50],
      surfaceTintColor: Colors.transparent,
      elevation: 5, // Elevação da sombra do card
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: const BorderSide(color: Colors.blue, width: 2),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: const Icon(
              Icons.check_circle_outline,
              color: Colors.white,
            ),
            title: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                backgroundColor: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              description!,
              style: const TextStyle(
                color: Colors.white,
                backgroundColor: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              GoRouter.of(context).go(route);
            },
          ),
        ],
      ),
    );
  }
}
