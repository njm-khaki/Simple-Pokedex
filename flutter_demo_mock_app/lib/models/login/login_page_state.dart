import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_page_state.freezed.dart';

/// ログイン画面 状態クラス
sealed class LoginPageState {}

/// 未ログイン状態
@freezed
class UncertifiedState extends LoginPageState with _$UncertifiedState {
  const factory UncertifiedState({
    // メールアドレス
    @Default('') String mailAddress,
    // パスワード
    @Default('') String password,
  }) = _UncertifiedState;
}
