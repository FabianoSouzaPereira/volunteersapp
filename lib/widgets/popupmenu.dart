import 'dart:io';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:volunteersapp/core/router/paths.dart' as paths;

class PopUpMenu extends StatefulWidget {
  const PopUpMenu({super.key});

  @override
  State<PopUpMenu> createState() => _PopUpMenuState();
}

class _PopUpMenuState extends State<PopUpMenu> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Column(
          children: [
            Expanded(
              child: PopupMenuButton<String>(
                iconColor: Colors.white,
                onSelected: (String choice) async {
                  if (choice == 'Settings') {
                    GoRouter.of(context).go(paths.SettingsPagePath);
                  } else if (choice == 'Logout') {
                    // homeCubit.authLocalRepository.deleteAuthToken();
                    GoRouter.of(context).go(paths.LoginPagePath);
                  } else if (choice == 'Exit') {
                    exit(0);
                  }
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: 'Settings',
                    child: ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('Settings'),
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'Help',
                    child: ListTile(
                      leading: Icon(Icons.help),
                      title: Text('Help'),
                    ),
                  ),
                  PopupMenuDivider(),
                  PopupMenuItem<String>(
                    value: 'Logout',
                    child: ListTile(
                      leading: Icon(Icons.logout),
                      title: Text('Logout'),
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'Exit',
                    child: ListTile(
                      leading: Icon(Icons.exit_to_app),
                      title: Text('Exit'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
