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
    String _backgroundImage = 'assets/images/background_image_black1.jpg';
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
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              GoRouter.of(context).go(paths.HomePagePath);
            },
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.transparent,
          child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(_backgroundImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: ReorderableListWidget(
                      items: [],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
