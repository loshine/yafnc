import 'package:freezed_annotation/freezed_annotation.dart';

import 'forum.dart';

part 'forum_group.freezed.dart';
part 'forum_group.g.dart';

@freezed
class ForumGroup with _$ForumGroup {
  const factory ForumGroup({
    required String id,
    required String name,
    required List<Forum> data,
  }) = _ForumGroup;

  factory ForumGroup.fromJson(Map<String, dynamic> json) =>
      _$ForumGroupFromJson(json);
}
