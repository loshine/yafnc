import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yafnc/src/ui/message/message_screen.dart';
import 'package:yafnc/src/ui/profile/profile_screen.dart';
import 'package:yafnc/src/ui/settings/settings_screen.dart';

import 'ui/home/home_screen.dart';
import 'ui/scaffold_with_nested_navigation.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _homeShellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final _messageShellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'message');
final _profileShellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'profile');
final _settingsShellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'settings');

final appRouter = GoRouter(
  initialLocation: '/forums',
  navigatorKey: _rootNavigatorKey,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
      },
      branches: [
        // first branch (A)
        StatefulShellBranch(
          navigatorKey: _homeShellNavigatorKey,
          routes: [
            // top route inside branch
            GoRoute(
              path: '/forums',
              pageBuilder: (context, state) => const NoTransitionPage(
                // child: RootScreen(label: 'A', detailsPath: '/a/details'),
                child: HomeScreen(),
              ),
              routes: [
                // child route
                // GoRoute(
                //   path: 'details',
                //   builder: (context, state) => const DetailsScreen(label: 'A'),
                // ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _messageShellNavigatorKey,
          routes: [
            // top route inside branch
            GoRoute(
              path: '/message',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: MessageScreen(),
              ),
              routes: [],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _profileShellNavigatorKey,
          routes: [
            // top route inside branch
            GoRoute(
              path: '/profile',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: ProfileScreen(),
              ),
              routes: [],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _settingsShellNavigatorKey,
          routes: [
            // top route inside branch
            GoRoute(
              path: '/settings',
              pageBuilder: (context, state) => const NoTransitionPage(
                // child: RootScreen(label: 'A', detailsPath: '/a/details'),
                child: SettingsScreen(),
              ),
              routes: [],
            ),
          ],
        ),
      ],
    ),
  ],
);
