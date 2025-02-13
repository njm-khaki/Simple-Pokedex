import 'package:flutter_demo_mock_app/states/pokedex/usecase/pokedex_obtained_case.dart';

/// ポケモン一覧取得済 追加読み込みエラー状態 ユーザーイベント
abstract interface class PokedexAdditionalErrorCase
    implements PokedexObtainedCase {
  /// ポケモン 再追加読み込みボタン押下時の処理
  Future<void> onTapAddtionalRetryButton();
}
