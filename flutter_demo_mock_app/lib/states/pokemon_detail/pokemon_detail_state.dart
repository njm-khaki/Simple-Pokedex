import 'package:flutter_demo_mock_app/models/pokemon_detail/pokemon_detail_page_state.dart';
import 'package:flutter_demo_mock_app/states/pokemon_detail/usecase/pokemon_detail_loaded_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ポケモン詳細画面 状態
class PokemonDetailState extends Notifier<PokemonDetailPageState>
    implements PokemonDetailLoadedCase {
  @override
  PokemonDetailPageState build() {
    // 画面表示時は既に読み込み済状態とする
    return PokemonDetailLoaded();
  }
}

/// ポケモン詳細画面の状態をviewへ提供
final pokemonDetailProvider =
    NotifierProvider<PokemonDetailState, PokemonDetailPageState>(
  PokemonDetailState.new,
);
