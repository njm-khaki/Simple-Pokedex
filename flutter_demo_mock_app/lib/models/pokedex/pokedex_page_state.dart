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

/// ポケモン図鑑 読み込みエラー状態
@freezed
class PokedexLoadingError extends PokedexPageState with _$PokedexLoadingError {
  const factory PokedexLoadingError() = _PokedexLoadingError;
}

/// ポケモン一覧取得済状態
sealed class PokedexObtained extends PokedexPageState {
  PokedexObtained({
    required this.pokemons,
    this.next,
  });

  // 読み込み済ポケモン一覧
  final List<PokemonDetail> pokemons;
  // 次に読み込むポケモンのURL
  final String? next;
}

/// ポケモン図鑑 読み込み済み状態
@freezed
class PokedexLoaded extends PokedexObtained with _$PokedexLoaded {
  const factory PokedexLoaded({
    // ポケモン詳細情報リスト
    @Default([]) List<PokemonDetail> pokemons,
    @Default(null) String? next,
  }) = _PokedexLoaded;
}

/// ポケモン一覧 追加読み込み状態
@freezed
class PokedexAdditionalLoading extends PokedexObtained
    with _$PokedexAdditionalLoading {
  const factory PokedexAdditionalLoading({
    // ポケモン詳細情報リスト
    @Default([]) List<PokemonDetail> pokemons,
    @Default(null) String? next,
  }) = _PokedexAdditionalLoading;
}

/// ポケモン一覧 追加読み込みエラー状態
@freezed
class PokedexAdditionalError extends PokedexObtained
    with _$PokedexAdditionalError {
  const factory PokedexAdditionalError({
    // ポケモン詳細情報リスト
    @Default([]) List<PokemonDetail> pokemons,
    @Default(null) String? next,
  }) = _PokedexAdditionalError;
}
