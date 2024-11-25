import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yafnc/src/data/repository/account_token_repository.dart';
import 'package:yafnc/src/data/repository/forum_repository.dart';

import 'data_providers.dart';

part 'repository_providers.g.dart';

@riverpod
ForumRepository forumRepository(Ref ref) {
  return ForumRepositoryImpl(
    client: ref.read(ngaHttpClientProvider),
    box: ref.read(appDataBoxProvider),
  );
}

@riverpod
AccountTokenRepository accountTokenRepository(Ref ref) {
  return AccountTokenRepositoryImpl(
    dao: ref.read(accountTokenDaoProvider),
    box: ref.read(appDataBoxProvider),
  );
}
