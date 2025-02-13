import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/pokemon_detail.dart';

/// ポケモン一覧取得済状態 ユーザーイベント
abstract interface class PokedexObtainedCase {
  /// ポケモンをタップしたときの処理
  /// 画面遷移をするため[context]を受け取る
  /// 押下したポケモンの情報を[pokemon]として受け取る
  void onTapPokemon(
    BuildContext context,
    PokemonDetail pokemon,
  );
}
