import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fast_gbk/fast_gbk.dart';

FutureOr<String?> ngaResponseDecoder(
  List<int> responseBytes,
  RequestOptions options,
  ResponseBody responseBody,
) {
  var result = gbk.decode(responseBytes, allowMalformed: true);
  // 回复中的 alterinfo 字段中可能存在 \t 字符
  // 造成 json 解析报错，需要先行删除
  result = result.replaceAll('\t', '');
  // 处理 json 字符串不严格的情况
  // 对象的字段名使用了数字(1)而不是字符串("1")
  RegExp r1 = RegExp(r'\s\d{1,2}:');
  RegExp r2 = RegExp(r',\d{1,2}:');
  RegExpMatch? res;

  while ((res = r1.firstMatch(result)) != null) {
    int startIndex = res!.start;
    int endIndex = startIndex + res.group(0)!.indexOf(":");
    result =
        '${result.substring(0, startIndex)}"${result.substring(startIndex, endIndex).trim()}"${result.substring(endIndex)}';
  }

  while ((res = r2.firstMatch(result)) != null) {
    int startIndex = res!.start + 1;
    int endIndex = startIndex + res.group(0)!.indexOf(":") - 1;
    result =
        '${result.substring(0, startIndex)}"${result.substring(startIndex, endIndex).trim()}"${result.substring(endIndex)}';
  }
  // 处理以 window.script_muti_get_var_store= 开头的情况
  if (result.startsWith('window.script_muti_get_var_store=')) {
    result = result.substring(33);
  }
  return result;
}
