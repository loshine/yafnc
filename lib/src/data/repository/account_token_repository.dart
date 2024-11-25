import 'package:collection/collection.dart';
import 'package:hive_ce/hive.dart';
import 'package:yafnc/src/data/local/dbentity/account_token.dart';

import '../local/dao/account_token_dao.dart';

abstract class AccountTokenRepository {
  Future<void> saveToken(AccountToken accountToken);

  Future<void> deleteTokenByUid(int uid);

  Stream<AccountToken?> findCurrentToken();

  Stream<List<AccountToken>> findAllTokens();
}

class AccountTokenRepositoryImpl implements AccountTokenRepository {
  final AccountTokenDao _dao;
  final Box _box;

  AccountTokenRepositoryImpl({required AccountTokenDao dao, required Box box})
      : _dao = dao,
        _box = box;

  @override
  Future<void> saveToken(AccountToken accountToken) {
    return _dao.insertAccountToken(accountToken);
  }

  @override
  Future<void> deleteTokenByUid(int uid) {
    return _dao.deleteTokenByUid(uid);
  }

  @override
  Stream<AccountToken?> findCurrentToken() {
    final uid = _box.get('uid');
    return _dao
        .findAllAccountTokens()
        .map((list) => list.firstWhereOrNull((e) => e.uid == uid));
  }

  @override
  Stream<List<AccountToken>> findAllTokens() {
    return _dao.findAllAccountTokens();
  }
}
