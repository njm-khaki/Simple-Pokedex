import 'package:flutter_demo_mock_app/response_data/pokemon_detail/pokemon_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_sequence_result.freezed.dart';

/// ポケモン一覧取得シーケンス 取得結果
@freezed
class PokemonSequenceResult with _$PokemonSequenceResult {
  const factory PokemonSequenceResult({
    // ポケモン詳細情報リスト
    @Default([]) List<PokemonDetail> pokemons,
    // 次の取得URL
    @Default(null) String? next,
  }) = _PokemonSequenceResult;
}
