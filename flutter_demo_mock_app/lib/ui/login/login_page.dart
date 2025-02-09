import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/models/login/login_page_state.dart';
import 'package:flutter_demo_mock_app/states/login/login_state.dart';
import 'package:flutter_demo_mock_app/ui/login/templates/uncertified_contents.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ログイン画面
class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 状態とユーザーイベントを取得
    final state = ref.watch(loginProvider);
    final notifier = ref.read(loginProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text('Pokedex'),
      ),
      body: switch (state) {
        // 未ログイン状態での表示
        UncertifiedState() => UncertifiedContents(
            state: state,
            notifier: notifier,
          ),
      },
    );
  }
}
