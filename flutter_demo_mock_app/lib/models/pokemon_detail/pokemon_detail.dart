import 'package:flutter_demo_mock_app/models/pokemon_detail/sprite/pokemon_sprite.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_detail.freezed.dart';
part 'pokemon_detail.g.dart';

@freezed
class PokemonDetail with _$PokemonDetail {
  const factory PokemonDetail({
    required String name,
    required PokemonSprite sprites,
  }) = _PokemonDetail;

  factory PokemonDetail.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailFromJson(json);
}
