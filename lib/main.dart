import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yafnc/src/app.dart';

import 'src/data/data_providers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  final container = await initProviderContainer();
  runApp(UncontrolledProviderScope(
    container: container,
    child: YafncApp(savedThemeMode: savedThemeMode),
  ));
}
