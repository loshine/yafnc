import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:octo_image/octo_image.dart';
import 'package:yafnc/src/ui/home/forum_group_list_state_notifier.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final forumGroupList = ref.watch(forumGroupListStateNotifierProvider);
    return DefaultTabController(
      length: forumGroupList.isEmpty ? 1 : forumGroupList.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Forums'),
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
                  .map((group) => ListView(
                        children: group.data
                            .map((forum) => ListTile(
                                  leading: OctoImage(
                                    width: 36,
                                    height: 36,
                                    image: CachedNetworkImageProvider(
                                        "https://img4.nga.178.com/ngabbs/nga_classic/f/app/${forum.fid}.png"),
                                    placeholderBuilder: OctoPlaceholder
                                        .circularProgressIndicator(),
                                    errorBuilder: (_, __, ___) => Image.asset(
                                        'images/default_forum_icon.png'),
                                    fit: BoxFit.cover,
                                  ),
                                  title: Text(forum.name),
                                  subtitle: Text(forum.info ?? ''),
                                ))
                            .toList(),
                      ))
                  .toList(),
        ),
      ),
    );
  }
}
