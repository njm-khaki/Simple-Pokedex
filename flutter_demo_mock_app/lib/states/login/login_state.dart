import 'package:flutter_demo_mock_app/models/login/uncertified_state.dart';
import 'package:flutter_demo_mock_app/states/login/usecase/uncertified_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_demo_mock_app/models/login/login_page_state.dart';

/// ログイン画面 状態管理
class LoginState extends Notifier<LoginPageState> with UncertifiedCase {
  @override
  LoginPageState build() {
    return UncertifiedState();
  }

  @override
  void onChangeMailAdress(String value) {
    print('on change mailaddress: $value');

    if (state is! UncertifiedState) {
      return;
    }

    state = (state as UncertifiedState).copyWith(
      mailAddress: value,
    );
  }

  @override
  void onChangePassword(String value) {
    print('on change password: $value');
    if (state is! UncertifiedState) {
      return;
    }

    state = (state as UncertifiedState).copyWith(
      password: value,
    );
  }

  @override
  Future<void> onClickLoginButton() async {
    if (state is! UncertifiedState) {
      return;
    }

    final submit = (state as UncertifiedState);

    print('click login button!!\n${submit.toString()}');
  }
}

final loginProvider = NotifierProvider<LoginState, LoginPageState>(
  LoginState.new,
);
