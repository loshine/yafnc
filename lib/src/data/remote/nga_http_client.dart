import 'dart:convert';

import 'package:dio/dio.dart';

class NgaHttpClient {
  final Dio _dio;

  NgaHttpClient({required Dio dio}) : _dio = dio;

  Future<Map<String, dynamic>> getAllForumGroups() {
    return _dio
        .get('https://img4.nga.178.com/proxy/cache_attach/bbs_index_data.js')
        .then((resp) => jsonDecode(resp.data));
  }
}
