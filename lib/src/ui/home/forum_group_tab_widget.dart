import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:yafnc/src/data/entity/forum_group.dart';

class ForumGroupTabWidget extends StatelessWidget {
  final ForumGroup group;

  const ForumGroupTabWidget({super.key, required this.group});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: group.data
          .map((forum) => ListTile(
                leading: CachedNetworkImage(
                    width: 36,
                    height: 36,
                    placeholder: (context, url) => Image.asset(
                          'images/default_forum_icon.png',
                          width: 36,
                          height: 36,
                        ),
                    errorWidget: (_, __, ___) => Image.asset(
                          'images/default_forum_icon.png',
                          width: 36,
                          height: 36,
                        ),
                    imageUrl:
                        "https://img4.nga.178.com/ngabbs/nga_classic/f/app/${forum.fid}.png"),
                title: Text(forum.name),
                subtitle: forum.info != null ? Text(forum.info!) : null,
              ))
          .toList(),
    );
  }
}
