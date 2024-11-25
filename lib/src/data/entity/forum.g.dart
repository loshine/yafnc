// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForumImpl _$$ForumImplFromJson(Map<String, dynamic> json) => _$ForumImpl(
      fid: (json['fid'] as num).toInt(),
      name: json['name'] as String,
      info: json['info'] as String?,
      infoL: json['infoL'] as String?,
      stid: (json['stid'] as num?)?.toInt(),
      bit: (json['bit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ForumImplToJson(_$ForumImpl instance) =>
    <String, dynamic>{
      'fid': instance.fid,
      'name': instance.name,
      'info': instance.info,
      'infoL': instance.infoL,
      'stid': instance.stid,
      'bit': instance.bit,
    };
