import 'package:dio/dio.dart';
import 'package:hive_ce/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yafnc/src/data/remote/nga_http_client.dart';

import 'remote/response_decoder.dart';

part 'data_providers.g.dart';

@riverpod
BaseOptions baseOptions(Ref _) {
  return BaseOptions(
    baseUrl: 'https://bbs.nga.cn/',
    queryParameters: {
      '__inchst=UTF8': 'utf8',
    },
    responseDecoder: ngaResponseDecoder,
  );
}

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  return Dio(ref.read(baseOptionsProvider));
}

@riverpod
NgaHttpClient ngaHttpClient(Ref ref) {
  return NgaHttpClient(dio: ref.read(dioProvider));
}

@Riverpod(keepAlive: true)
Box forumBox(Ref ref) {
  return Hive.box('forum');
}
