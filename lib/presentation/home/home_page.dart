import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:volunteersapp/presentation/home/home_cubit.dart';
import 'package:volunteersapp/presentation/home/home_page_state.dart';
import 'package:volunteersapp/presentation/home/widgets/grid_cards.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    var viewPaddingTop = MediaQuery.of(context).viewPadding.top;
    String _backgroundImage = 'assets/images/background_image_black1.jpg';

    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return SafeArea(
            top: true,
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                title: Text(
                  locale.voluntiers(0)[0].toUpperCase() + locale.voluntiers(0).substring(1).toLowerCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.transparent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                backgroundColor: Colors.transparent,
              ),
              body: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(_backgroundImage),
                    fit: BoxFit.cover,
                  ),
                ),
                height: double.infinity,
                width: double.infinity,
                child: Container(
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(height: viewPaddingTop - 15),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: CardsGrid(cards: state.cards),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              // floatingActionButton: FloatingActionButton(
              //   onPressed: () {
              //     context.read<HomeCubit>().updateIcons([Icons.work, Icons.favorite, Icons.settings, Icons.notifications, Icons.person, Icons.email, Icons.camera, Icons.movie]);
              //   },
              //   child: const Icon(Icons.add),
              // ),
            ),
          );
        },
      ),
    );
  }
}
