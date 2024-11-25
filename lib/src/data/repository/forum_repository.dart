import 'dart:convert';
import 'package:hive_ce/hive.dart';
import 'package:yafnc/src/data/entity/forum.dart';
import 'package:yafnc/src/data/entity/forum_group.dart';
import 'package:yafnc/src/data/remote/nga_http_client.dart';

abstract class ForumRepository {
  Future<List<ForumGroup>> getAllForumGroups();
}

class ForumRepositoryImpl implements ForumRepository {
  final NgaHttpClient _client;
  final Box _box;

  ForumRepositoryImpl({required NgaHttpClient client, required Box box})
      : _client = client,
        _box = box;

  @override
  Future<List<ForumGroup>> getAllForumGroups() {
    String groups = _box.get('groups', defaultValue: '[]');
    if (groups.length > '[]'.length) {
      return Future.delayed(
          const Duration(milliseconds: 100),
          () => jsonDecode(groups)
              .map<ForumGroup>((e) => ForumGroup.fromJson(e))
              .toList());
    }
    return _client.getAllForumGroups().then((map) {
      Map<String, dynamic> forumsMap = map['data']['0']['all'];
      List<ForumGroup> groups = [];
      for (var entry in forumsMap.entries) {
        List<Forum> list = [];
        final content = entry.value['content'];
        if (content is Map && content['0']['content'].isNotEmpty) {
          for (var item in content['0']['content'].values) {
            list.add(Forum.fromJson(item));
          }
          groups.add(ForumGroup(
            id: entry.value['id'],
            name: entry.value['name'],
            data: list,
          ));
        }
      }
      if (groups.isNotEmpty) {
        _box.put('groups', jsonEncode(groups));
      }
      return groups;
    });
  }
}
