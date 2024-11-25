import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import 'router.dart';

class YafncApp extends StatelessWidget {
  final AdaptiveThemeMode? savedThemeMode;

  const YafncApp({super.key, this.savedThemeMode});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      initial: savedThemeMode ?? AdaptiveThemeMode.system,
      light: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF591804)),
        useMaterial3: true,
      ),
      dark: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF591804),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      builder: (theme, darkTheme) => MaterialApp.router(
        title: 'Yafnc',
        theme: theme,
        darkTheme: darkTheme,
        routerConfig: appRouter,
      ),
    );
  }
}
