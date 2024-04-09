import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("USUÁRIO"),
                ],
              )),
        ),
      ),
    );
  }
}
