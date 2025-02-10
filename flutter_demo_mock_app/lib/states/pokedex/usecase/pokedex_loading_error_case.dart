/// ポケモン図鑑画面 読み込みエラー状態 ユーザーイベント
abstract interface class PokedexLoadingErrorCase {
  /// 再読み込みボタン押下時の処理
  Future<void> onClickReloadButton();
}
