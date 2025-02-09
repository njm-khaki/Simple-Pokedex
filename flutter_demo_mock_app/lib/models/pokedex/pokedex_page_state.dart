import 'package:flutter_demo_mock_app/response_data/pokemon_detail/pokemon_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokedex_page_state.freezed.dart';

/// ポケモン図鑑画面 状態クラス
sealed class PokedexPageState {}

/// ポケモン図鑑 ローディング状態
@freezed
class PokedexLoading extends PokedexPageState with _$PokedexLoading {
  const factory PokedexLoading() = _PokedexLoading;
}

/// ポケモン図鑑 読み込み済み状態
@freezed
class PokedexLoaded extends PokedexPageState with _$PokedexLoaded {
  const factory PokedexLoaded({
    // ポケモン詳細情報リスト
    @Default([]) List<PokemonDetail> pokemons,
  }) = _PokedexLoaded;
}
