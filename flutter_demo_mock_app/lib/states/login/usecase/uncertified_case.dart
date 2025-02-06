import 'package:flutter/widgets.dart';

abstract mixin class UncertifiedCase {
  void onChangeMailAdress(String value);

  void onChangePassword(String value);

  Future<void> onClickLoginButton(BuildContext context);
}
