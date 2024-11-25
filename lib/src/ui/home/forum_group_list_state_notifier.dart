import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yafnc/src/data/entity/forum_group.dart';
import 'package:yafnc/src/data/repository/forum_repository.dart';

import '../../data/repository_providers.dart';

part 'forum_group_list_state_notifier.g.dart';

@riverpod
class ForumGroupListStateNotifier extends _$ForumGroupListStateNotifier {
  late ForumRepository _repository;

  @override
  List<ForumGroup> build() {
    _repository = ref.read(forumRepositoryProvider);
    load();
    return [];
  }

  void load() {
    debugPrint('load');
    _repository.getAllForumGroups().then((groups) {
      state = groups;
    }).catchError((err) {
      debugPrint(err);
    });
  }
}
