import 'package:flutter/material.dart';

class NotificationWidget extends StatefulWidget {
  final String? notification;

  const NotificationWidget({
    super.key,
    required this.notification,
    required Null Function() onWidgetLoaded,
  });

  @override
  State<NotificationWidget> createState() => _NotificationWidget();
}

class _NotificationWidget extends State<NotificationWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(
            color: Colors.white,
            width: 1.0,
          ),
        ),
        child: Text(
          widget.notification ?? "",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 8,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                color: Color.fromRGBO(88, 88, 83, 1),
                offset: Offset(1.2, 3.2),
                blurRadius: 2.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
