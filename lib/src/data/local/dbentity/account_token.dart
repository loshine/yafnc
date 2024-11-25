import 'package:floor/floor.dart';

@entity
class AccountToken {
  @primaryKey
  final int uid;
  final String avatar;
  final String username;
  final String token;

  AccountToken({
    required this.uid,
    required this.avatar,
    required this.username,
    required this.token,
  });
  // final int boundMobile;
  // final int loginType;
}

// "uid": 3355501,
// "username": "\u697c\u4e0a\u7684\u4f60\u5988\u5988\u53eb\u4f60\u5403\u996d",
// "avatar": "https://img.nga.178.com/avatars/2002/36d/333/000/3355501_1.jpg?5|.a/3355501_0.jpg?41",
// "token": "X8mfcvvhhidrr2mrri3i7ouvua20qdvenqan6fmg",
// "bound_mobile": 1,
// "login_type": 2