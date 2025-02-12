import 'package:flutter_demo_mock_app/response_data/pokemon_detail/ability/pokemon_ability.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/sprite/pokemon_sprite.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/type/pokemon_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_detail.freezed.dart';
part 'pokemon_detail.g.dart';

/// ポケモン詳細情報
@freezed
class PokemonDetail with _$PokemonDetail {
  const factory PokemonDetail({
    // ポケモン名
    required String name,
    // 画像一覧
    required PokemonSprite sprites,
    // ポケモンのタイプ情報
    required List<PokemonType> types,
    // 高さ
    required int height,
    // 重さ
    required int weight,
    // 特性
    required List<PokemonAbility> abilities,
  }) = _PokemonDetail;

  /// JSONより変換
  factory PokemonDetail.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailFromJson(json);
}
