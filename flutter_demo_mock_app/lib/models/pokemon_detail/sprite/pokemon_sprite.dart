import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_sprite.freezed.dart';
part 'pokemon_sprite.g.dart';

@freezed
class PokemonSprite with _$PokemonSprite {
  const factory PokemonSprite({
    @JsonKey(name: 'back_default') @Default(null) String? backDefault,
    @JsonKey(name: 'back_female') @Default(null) String? backFemale,
    @JsonKey(name: 'back_shiny') @Default(null) String? backShiny,
    @JsonKey(name: 'back_shiny_female') @Default(null) String? backShinyFemale,
    @JsonKey(name: 'front_default') @Default(null) String? frontDefault,
    @JsonKey(name: 'front_female') @Default(null) String? frontFemale,
    @JsonKey(name: 'front_shiny') @Default(null) String? frontShiny,
    @JsonKey(name: 'front_shiny_female') @Default(null) String? frontShinyFemale,
  }) = _PokemonSprite;

  factory PokemonSprite.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpriteFromJson(json);
}
