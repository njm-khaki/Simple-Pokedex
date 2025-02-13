import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_ability_detail.freezed.dart';
part 'pokemon_ability_detail.g.dart';

/// ポケモン 特性情報
@freezed
class PokemonAbilityDetail with _$PokemonAbilityDetail {
  const factory PokemonAbilityDetail({
    // 特性名
    @Default("") String name,
    // 詳細情報URL
    @Default(null) String? url,
  }) = _PokemonAbilityDetail;

  /// JSONより変換
  factory PokemonAbilityDetail.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilityDetailFromJson(json);
}
