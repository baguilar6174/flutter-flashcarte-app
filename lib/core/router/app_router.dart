import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_flashcarte_app/features/profile/presentation/pages/pages.dart';

import 'package:flutter_flashcarte_app/features/cards/presentation/presentation.dart';

import 'package:flutter_flashcarte_app/core/core.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

enum Routes {
  root("/"),
  splashScreen("/splashscreen"),
  home("/home"),
  decks("/decks"),
  deckDetail("/detail"),
  profile("/profile");

  const Routes(this.path);
  final String path;
}

final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(
      path: Routes.splashScreen.path,
      name: Routes.splashScreen.name,
      builder: (_, __) => const SplashPage(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, shell) => HomePage(navigationShell: shell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.decks.path,
              name: Routes.decks.name,
              builder: (_, __) => const DecksPage(),
              routes: [
                GoRoute(
                  path: Routes.deckDetail.path,
                  name: Routes.deckDetail.name,
                  builder: (context, state) {
                    String id = state.uri.queryParameters['id']!;
                    context.read<DecksCubit>().getById(id);
                    return DeckDetailPage(deckId: id);
                  },
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.profile.path,
              name: Routes.profile.name,
              builder: (_, __) => const ProfilePage(),
            ),
          ],
        ),
      ],
    ),
  ],
  initialLocation: Routes.splashScreen.path,
  routerNeglect: true,
  debugLogDiagnostics: kDebugMode,
);
