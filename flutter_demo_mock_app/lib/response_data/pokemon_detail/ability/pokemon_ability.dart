import 'package:flutter_demo_mock_app/response_data/pokemon_detail/ability/pokemon_ability_detail/pokemon_ability_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_ability.freezed.dart';
part 'pokemon_ability.g.dart';

/// ポケモン 特性情報
@freezed
class PokemonAbility with _$PokemonAbility {
  const factory PokemonAbility({
    // 特性番号
    required int slot,
    // 隠し特性(夢特性)フラグ
    @JsonKey(name: 'is_hidden') required bool isHidden,
    // 特性詳細情報
    required PokemonAbilityDetail ability,
  }) = _PokemonAbility;

  /// JSONより変換
  factory PokemonAbility.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilityFromJson(json);
}
