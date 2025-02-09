import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_detail_page_state.freezed.dart';

/// ポケモン詳細画面 状態
sealed class PokemonDetailPageState {}

/// ポケモン詳細情報 読み込み済状態
@freezed
class PokemonDetailLoaded extends PokemonDetailPageState
    with _$PokemonDetailLoaded {
  const factory PokemonDetailLoaded() = _PokemonDetailLoaded;
}
