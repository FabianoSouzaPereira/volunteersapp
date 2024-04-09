// home_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:volunteersapp/presentation/home/widgets/grid_icon.dart';
import 'package:volunteersapp/presentation/home/widgets/home_card.dart';
import 'home_page_state.dart';
import 'package:volunteersapp/core/router/paths.dart' as paths;

final List<HomeCard> cards = [
  HomeCard(
    onPressed: () {},
    title: "Favorities",
    icon: const CustomIcon(
      name: "Favorite",
      iconData: Icons.favorite,
      route: 'route',
      iconColor: Colors.white,
      notification: "",
    ),
  ),
  HomeCard(
    onPressed: () {},
    title: "Settings",
    icon: const CustomIcon(
      name: "Settings",
      iconData: Icons.settings,
      route: paths.SettingsPagePath,
      iconColor: Colors.white,
      notification: "",
    ),
  ),
  HomeCard(
    onPressed: () {},
    title: "Notifications",
    icon: const CustomIcon(
      name: "Notifications",
      iconData: Icons.notifications,
      route: 'route',
      iconColor: Colors.white,
      notification: "",
    ),
  ),
  HomeCard(
    onPressed: () {},
    title: "User",
    icon: const CustomIcon(
      name: "User",
      iconData: Icons.person,
      route: paths.UserPagePath,
      iconColor: Colors.white,
      notification: "",
    ),
  ),
  HomeCard(
    onPressed: () {},
    title: "Emails",
    icon: const CustomIcon(
      name: "Emails",
      iconData: Icons.email,
      route: 'route',
      iconColor: Colors.white,
      notification: "",
    ),
  ),
  HomeCard(
    onPressed: () {},
    title: "Cameras",
    icon: const CustomIcon(
      name: "Cameras",
      iconData: Icons.camera,
      route: 'route',
      iconColor: Colors.white,
      notification: "",
    ),
  ),
  HomeCard(
    onPressed: () {},
    title: "Videos",
    icon: const CustomIcon(
      name: "Videos",
      iconData: Icons.movie,
      route: 'route',
      iconColor: Colors.white,
      notification: "",
    ),
  ),
];

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial(cards));

  void updateIcons(List<IconData> updatedIcons) {
    if (updatedIcons.length != state.cards.length) {
      throw ArgumentError(
          "A quantidade de ícones atualizados não corresponde à quantidade de cartões existentes.");
    }

    List<HomeCard> updatedCards = state.cards.asMap().entries.map((entry) {
      final index = entry.key;
      final card = entry.value;
      return HomeCard(
        onPressed: card.onPressed,
        title: card.title,
        icon: CustomIcon(
          name: card.icon.name,
          iconData: updatedIcons[index],
          route: card.icon.route,
          iconColor: card.icon.iconColor,
          notification: card.icon.notification,
        ),
      );
    }).toList();

    emit(HomeStateUpdated(updatedCards));
  }
}
