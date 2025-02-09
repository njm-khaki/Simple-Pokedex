import 'package:flutter/widgets.dart';

/// 未ログイン状態 ユーザーイベント定義
abstract mixin class UncertifiedCase {
  /// メールアドレス入力時の処理
  /// 入力された値を[value]として受け取る
  void onChangeMailAdress(String value);

  /// パスワード入力時の処理
  /// 入力された値を[value]として受け取る
  void onChangePassword(String value);

  /// ログインボタン押下時の処理
  /// 画面遷移をするため[context]を受け取る
  Future<void> onClickLoginButton(BuildContext context);
}
