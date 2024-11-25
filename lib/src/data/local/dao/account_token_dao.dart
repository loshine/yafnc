import 'package:floor/floor.dart';
import 'package:yafnc/src/data/local/dbentity/account_token.dart';

@dao
abstract class AccountTokenDao {
  @Query('SELECT * FROM AccountToken')
  Future<List<AccountToken>> findAllPeople();

  // @Query('SELECT name FROM Person')
  // Stream<List<String>> findAllPeopleName();

  @Query('SELECT * FROM Person WHERE uid = :uid')
  Stream<AccountToken?> findAccountTokenByUid(int uid);

  @Query('SELECT * FROM AccountToken')
  Stream<List<AccountToken>> findAllAccountTokens();

  @insert
  Future<void> insertAccountToken(AccountToken accountToken);

  @Query('DELETE FROM AccountToken WHERE uid = :uid')
  Future<void> deleteTokenByUid(int uid);
}
