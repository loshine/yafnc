// required package imports
import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:yafnc/src/data/local/dbentity/account_token.dart';
import 'package:yafnc/src/data/local/dao/account_token_dao.dart';

part 'database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [AccountToken])
abstract class AppDatabase extends FloorDatabase {
  AccountTokenDao get accountTokenDao;
}
