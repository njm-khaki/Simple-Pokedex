abstract interface class UncertifiedCase {
  void onChangeMailAdress(String value);

  void onChangePassword(String value);

  Future<void> onClickLoginButton();
}
