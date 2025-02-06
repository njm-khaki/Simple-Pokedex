import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_sprite.freezed.dart';
part 'pokemon_sprite.g.dart';

@freezed
class PokemonSprite with _$PokemonSprite {
  const factory PokemonSprite({
    @JsonKey(name: 'back_default') @Default(null) String? backDefault,
  }) = _PokemonSprite;

  factory PokemonSprite.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpriteFromJson(json);
}
