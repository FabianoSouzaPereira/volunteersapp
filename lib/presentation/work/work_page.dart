import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:volunteersapp/presentation/work/work_cubit.dart';
import 'package:volunteersapp/presentation/work/work_page_state.dart';
import 'package:volunteersapp/core/router/paths.dart' as paths;

class WorkPage extends StatelessWidget {
  WorkPage({
    super.key,
    required String title,
  });

  final locator = GetIt.instance;

  @override
  Widget build(BuildContext context) {
    String _backgroundImage = 'assets/images/background_image_black1.jpg';
    return BlocProvider(
      create: (context) => WorkCubit(),
      child: BlocBuilder<WorkCubit, WorkState>(
        builder: (context, state) {
          return SafeArea(
            top: true,
            child: Scaffold(
              appBar: AppBar(
                title: const Text(
                  "Tasks",
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
              body: BlocConsumer<WorkCubit, WorkState>(
                listener: (BuildContext context, WorkState state) {},
                builder: (BuildContext context, WorkState state) {
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
                        Text(
                          "Work Page",
                          style: const TextStyle(
                            color: Colors.white,
                            backgroundColor: Colors.transparent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
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
