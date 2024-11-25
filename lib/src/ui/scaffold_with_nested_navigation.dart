import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ScaffoldWithNestedNavigation extends ConsumerWidget {
  const ScaffoldWithNestedNavigation({
    Key? key,
    required this.navigationShell,
  }) : super(key: key ?? const ValueKey('ScaffoldWithNestedNavigation'));

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AdaptiveScaffold(
      body: (_) => navigationShell,
      destinations: const [
        NavigationDestination(label: 'Home', icon: Icon(Icons.home)),
        NavigationDestination(label: 'Message', icon: Icon(Icons.message)),
        NavigationDestination(label: 'Profile', icon: Icon(Icons.person)),
        NavigationDestination(label: 'Settings', icon: Icon(Icons.settings)),
      ],
      selectedIndex: navigationShell.currentIndex,
      onSelectedIndexChange: (index) {
        navigationShell.goBranch(
          index,
          initialLocation: index == navigationShell.currentIndex,
        );
      },
    );
  }
}
