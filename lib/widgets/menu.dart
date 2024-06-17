import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  Menu() : super(key: UniqueKey());

  @override
  State<Menu> createState() => _Menu();
}

class _Menu extends State<Menu> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                child: MenuBar(
                  children: <Widget>[
                    SubmenuButton(
                      menuChildren: <Widget>[
                        MenuItemButton(
                          onPressed: () {
                            showAboutDialog(
                              context: context,
                              applicationName: 'MenuBar Sample',
                              applicationVersion: '1.0.0',
                            );
                          },
                          child: const MenuAcceleratorLabel('&About'),
                        ),
                        MenuItemButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Saved!'),
                              ),
                            );
                          },
                          child: const MenuAcceleratorLabel('&Save'),
                        ),
                        MenuItemButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Quit!'),
                              ),
                            );
                          },
                          child: const MenuAcceleratorLabel('&Quit'),
                        ),
                      ],
                      child: const MenuAcceleratorLabel('&File'),
                    ),
                    SubmenuButton(
                      menuChildren: <Widget>[
                        MenuItemButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Magnify!'),
                              ),
                            );
                          },
                          child: const MenuAcceleratorLabel('&Magnify'),
                        ),
                        MenuItemButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Minify!'),
                              ),
                            );
                          },
                          child: const MenuAcceleratorLabel('Mi&nify'),
                        ),
                      ],
                      child: const MenuAcceleratorLabel('&View'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
