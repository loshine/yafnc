import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:yafnc/src/ui/home/forum_group_list_state_notifier.dart';

import 'forum_group_tab_widget.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final forumGroupList = ref.watch(forumGroupListStateNotifierProvider);
    return DefaultTabController(
      length: forumGroupList.isEmpty ? 1 : forumGroupList.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          bottom: TabBar(
            tabs: forumGroupList.isEmpty
                ? const [Tab(text: 'Loading...')]
                : forumGroupList.map((group) => Tab(text: group.name)).toList(),
            isScrollable: true,
          ),
        ),
        body: TabBarView(
          children: forumGroupList.isEmpty
              ? const [Center(child: CircularProgressIndicator())]
              : forumGroupList
                  .map((group) => ForumGroupTabWidget(group: group))
                  .toList(),
        ),
      ),
    );
  }
}
