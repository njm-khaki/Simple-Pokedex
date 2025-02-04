import 'package:flutter_demo_mock_app/models/login/uncertified_state.dart';
import 'package:flutter_demo_mock_app/states/login/usecase/uncertified_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_demo_mock_app/models/login/login_page_state.dart';

/// ログイン画面 状態管理
class LoginState extends Notifier<LoginPageState> implements UncertifiedCase {
  @override
  LoginPageState build() {
    return UncertifiedState();
  }
}
