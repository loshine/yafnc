import 'package:freezed_annotation/freezed_annotation.dart';

part 'forum.freezed.dart';
part 'forum.g.dart';

@freezed
class Forum with _$Forum {
  const factory Forum({
    required int fid,
    required String name,
    String? info,
    String? infoL,
    int? stid,
    int? bit,
  }) = _Forum;

  factory Forum.fromJson(Map<String, dynamic> json) => _$ForumFromJson(json);
}
