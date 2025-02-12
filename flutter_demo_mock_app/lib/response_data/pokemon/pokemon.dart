import 'package:flutter_demo_mock_app/response_data/pokemon/pokemon_item/pokemon_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

/// ポケモンAPI /pokemon 取得結果
@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon({
    // 全ポケモン数
    required int count,
    // 次のポケモン情報取得URL
    @Default(null) String? next,
    // 前のポケモン情報取得URL
    @Default(null) String? previous,
    // 取得したポケモン情報リスト
    @Default([]) List<PokemonItem> results,
  }) = _Pokemon;

  /// JSONより変換
  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
}
