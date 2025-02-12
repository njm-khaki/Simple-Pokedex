import 'package:flutter_demo_mock_app/response_data/pokemon_detail/ability/pokemon_ability_detail/pokemon_ability_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_ability.freezed.dart';
part 'pokemon_ability.g.dart';

// ポケモン タイプ詳細情報
@freezed
class PokemonAbility with _$PokemonAbility {
  const factory PokemonAbility({
    required int slot,
    @JsonKey(name: 'is_hidden') required bool isHidden,
    required PokemonAbilityDetail ability,
  }) = _PokemonAbility;

  /// JSONより変換
  factory PokemonAbility.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilityFromJson(json);
}
