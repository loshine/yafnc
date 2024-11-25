import 'package:dio/dio.dart';
import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger.dart';
import 'package:yafnc/src/data/local/dao/account_token_dao.dart';
import 'package:yafnc/src/data/local/db/database.dart';
import 'package:yafnc/src/data/remote/nga_http_client.dart';

import '../utils/logger.dart';
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
  final client = Dio(ref.read(baseOptionsProvider));
  client.interceptors.add(
    TalkerDioLogger(
      talker: Logger.instance().talker,
      settings: const TalkerDioLoggerSettings(
        printRequestHeaders: true,
        printResponseHeaders: false,
        printResponseMessage: true,
      ),
    ),
  );
  return client;
}

@riverpod
NgaHttpClient ngaHttpClient(Ref ref) {
  return NgaHttpClient(dio: ref.read(dioProvider));
}

@Riverpod(keepAlive: true)
Box appDataBox(Ref ref) {
  return Hive.box('app_data');
}

@Riverpod(keepAlive: true)
AppDatabase appDatabase(Ref ref) =>
    throw UnimplementedError('Database has not been initialized yet!');

Future<ProviderContainer> initProviderContainer() async {
  await Hive.initFlutter();
  await Hive.openBox('app_data');
  final database =
      await $FloorAppDatabase.databaseBuilder('app_database.db').build();
  final container = ProviderContainer(
    overrides: [
      appDatabaseProvider.overrideWithValue(database),
    ],
    observers: [
      TalkerRiverpodObserver(talker: Logger.instance().talker),
    ],
  );
  return container;
}

@riverpod
AccountTokenDao accountTokenDao(Ref ref) {
  return ref.read(appDatabaseProvider).accountTokenDao;
}
