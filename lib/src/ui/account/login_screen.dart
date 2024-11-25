import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:yafnc/src/data/local/dbentity/account_token.dart';
import 'package:yafnc/src/data/repository_providers.dart';
import 'package:yafnc/src/utils/logger.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useRef(WebViewController()).value;
    useEffect(() {
      controller.setJavaScriptMode(JavaScriptMode.unrestricted);
      controller.loadRequest(Uri.https('bbs.nga.cn', "nuke.php", {
        '__lib': 'login',
        '__act': 'account',
        'login': null,
      }));
      controller.setOnConsoleMessage((consoleMessage) {
        if (consoleMessage.message.startsWith("loginSuccess :")) {
          final cookiesJson =
              consoleMessage.message.substring("loginSuccess : ".length);
          final cookiesMap = jsonDecode(cookiesJson) as Map<String, dynamic>;
          ref
              .read(accountTokenRepositoryProvider)
              .saveToken(AccountToken(
                uid: cookiesMap['uid'],
                username: cookiesMap['username'],
                avatar: cookiesMap['avatar'],
                token: cookiesMap['token'],
              ))
              .then(
                (_) => Logger.instance().debug('save token success'),
              );
        }
      });
      return null;
    }, []);
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text('Login'),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
