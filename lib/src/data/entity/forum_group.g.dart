// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forum_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForumGroupImpl _$$ForumGroupImplFromJson(Map<String, dynamic> json) =>
    _$ForumGroupImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Forum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ForumGroupImplToJson(_$ForumGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'data': instance.data,
    };
