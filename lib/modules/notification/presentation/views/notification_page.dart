import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:volunteersapp/core/router/paths.dart' as paths;
import 'package:volunteersapp/modules/notification/presentation/cubits/notification_cubit.dart';
import 'package:volunteersapp/modules/notification/presentation/state/notification_page_state.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _backgroundImage = 'assets/images/background_image_black1.jpg';
    return BlocProvider(
      create: (context) => NotificationCubit(),
      child: BlocBuilder<NotificationCubit, NotificationPageState>(
        builder: (context, state) {
          return SafeArea(
            top: true,
            child: Scaffold(
              appBar: AppBar(
                title: const Text(
                  "Notification",
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
              body: BlocConsumer<NotificationCubit, NotificationPageState>(
                listener: (BuildContext context, state) {},
                builder: (BuildContext context, state) {
                  return Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(_backgroundImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Recebidos",
                              style: const TextStyle(
                                color: Colors.white,
                                backgroundColor: Colors.transparent,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
