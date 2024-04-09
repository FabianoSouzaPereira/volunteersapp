import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final String name;
  final IconData iconData;
  final String route;
  final Color? iconColor;
  final String? notification;

  const CustomIcon({
    super.key,
    required this.name,
    required this.iconData,
    required this.route,
    required this.iconColor,
    required this.notification,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        color: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Icon(
            iconData,
            size: 30,
            color: iconColor,
            shadows: const [
              Shadow(
                color: Color.fromARGB(255, 155, 255, 255),
                offset: Offset(1.0, 1.0),
                blurRadius: 3.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
