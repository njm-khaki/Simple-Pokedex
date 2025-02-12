import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/states/pokedex/usecase/pokedex_obtained_case.dart';

/// ポケモン図鑑画面 読み込み済状態 ユーザーイベント
abstract interface class PokedexLoadedCase implements PokedexObtainedCase {
  Future<void> onPokemonListScrollEnd(
    ScrollEndNotification notification,
  );
}
