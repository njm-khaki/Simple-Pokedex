import 'package:flutter/widgets.dart';
import 'package:flutter_demo_mock_app/models/login/login_page_state.dart';
import 'package:flutter_demo_mock_app/states/login/usecase/uncertified_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// ログイン画面 状態管理
class LoginState extends Notifier<LoginPageState> with UncertifiedCase {
  @override
  LoginPageState build() {
    // 画面表示時は未ログイン状態
    return UncertifiedState();
  }

  /// メールアドレス入力時の処理
  @override
  void onChangeMailAdress(String value) {
    // 未ログイン状態以外では何もしないはず
    if (state is! UncertifiedState) {
      return;
    }

    // メールアドレスを更新
    state = (state as UncertifiedState).copyWith(
      mailAddress: value,
    );
  }

  /// パスワード入力時の処理
  @override
  void onChangePassword(String value) {
    // 未ログイン状態以外では何もしないはず
    if (state is! UncertifiedState) {
      return;
    }

    // パスワードを更新
    state = (state as UncertifiedState).copyWith(
      password: value,
    );
  }

  /// ログインボタン押下時の処理
  @override
  Future<void> onClickLoginButton(BuildContext context) async {
    // 未ログイン状態以外では何もしないはず
    if (state is! UncertifiedState) {
      return;
    }

    // ポケモン図鑑画面へ遷移
    context.pushReplacementNamed('pokedex');
  }
}

/// ログイン画面の状態をviewへ提供
final loginProvider = NotifierProvider<LoginState, LoginPageState>(
  LoginState.new,
);
