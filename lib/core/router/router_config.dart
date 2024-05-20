import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:volunteersapp/core/router/router_observer.dart';
import 'package:volunteersapp/core/router/paths.dart' as paths;
import 'package:volunteersapp/core/router/routes.dart' as routes;
import 'package:volunteersapp/presentation/auth/auth_page.dart';
import 'package:volunteersapp/presentation/events/Events_page.dart';
import 'package:volunteersapp/presentation/home/home_page.dart';
import 'package:volunteersapp/presentation/notFound/page_notfound.dart';
import 'package:volunteersapp/presentation/settings/settings_page.dart';
import 'package:volunteersapp/presentation/splash/splash_page.dart';
import 'package:volunteersapp/presentation/user/user_page.dart';

final navigatorKey = GlobalKey<NavigatorState>();

GoRouter router = GoRouter(
  initialLocation: paths.SplashPagePath,
  navigatorKey: navigatorKey,
  observers: [GoRouterObserverGlobal()],
  redirect: (context, state) {
    final requestedPath = state.fullPath;

    final validRoutes = [
      paths.SplashPagePath,
      paths.LoginPagePath,
      paths.HomePagePath,
      paths.UserPagePath,
      paths.UserDescriptionsPath,
      paths.SettingsPagePath,
      paths.LeadersPagePath,
      paths.TeamsPagePath,
      paths.EventsPagePath,
    ];

    if (!validRoutes.contains(requestedPath)) {
      return paths.NotFoundPath;
    }

    return null;
  },
  routes: [
    GoRoute(
      path: paths.SplashPagePath,
      name: routes.SplashPageRoute,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: paths.LoginPagePath,
      name: routes.LoginPageRoute,
      builder: (context, state) => AuthPage(title: 'Login'),
    ),
    GoRoute(
      path: paths.HomePagePath,
      name: routes.HomePageRoute,
      builder: (context, state) => const HomePage(title: 'Home'),
    ),
    GoRoute(
      path: paths.UserPagePath,
      name: routes.UsersPageRoute,
      builder: (context, state) => const UserPage(title: 'User'),
    ),
    GoRoute(
      path: paths.EventsPagePath,
      name: routes.EventsPageRoute,
      builder: (context, state) => const EventsPage(title: 'Events'),
    ),
    GoRoute(
      path: paths.SettingsPagePath,
      name: routes.SettingsPageRoute,
      builder: (context, state) => const SettingsPage(title: 'Settings'),
    ),
    GoRoute(
      path: paths.NotFoundPath,
      name: routes.NotFoundPageRoute,
      builder: (context, state) => const NotFoundPage(),
    ),
  ],
);
