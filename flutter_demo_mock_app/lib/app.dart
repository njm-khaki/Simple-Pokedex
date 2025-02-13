import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/routers/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// アプリ本体
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // riverpodを用いた状態管理を有効にする
    return ProviderScope(
      child: MaterialApp.router(
        // ルーティング設定
        routerDelegate: router.routerDelegate,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
        theme: ThemeData(
          colorSchemeSeed: Colors.cyan,
        ),
      ),
    );
  }
}
