import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_ability_detail.freezed.dart';
part 'pokemon_ability_detail.g.dart';

// ポケモン タイプ詳細情報
@freezed
class PokemonAbilityDetail with _$PokemonAbilityDetail {
  const factory PokemonAbilityDetail({
    @Default("") String name,
    @Default(null) String? url,
  }) = _PokemonAbilityDetail;

  /// JSONより変換
  factory PokemonAbilityDetail.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilityDetailFromJson(json);
}
