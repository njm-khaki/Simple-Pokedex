import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_sprite.freezed.dart';
part 'pokemon_sprite.g.dart';

// ポケモンの画像一覧クラス
@freezed
class PokemonSprite with _$PokemonSprite {
  const PokemonSprite._();

  const factory PokemonSprite({
    @JsonKey(name: 'back_default') @Default(null) String? backDefault,
    @JsonKey(name: 'back_female') @Default(null) String? backFemale,
    @JsonKey(name: 'back_shiny') @Default(null) String? backShiny,
    @JsonKey(name: 'back_shiny_female') @Default(null) String? backShinyFemale,
    @JsonKey(name: 'front_default') @Default(null) String? frontDefault,
    @JsonKey(name: 'front_female') @Default(null) String? frontFemale,
    @JsonKey(name: 'front_shiny') @Default(null) String? frontShiny,
    @JsonKey(name: 'front_shiny_female')
    @Default(null)
    String? frontShinyFemale,
  }) = _PokemonSprite;

  /// JSONより変換
  factory PokemonSprite.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpriteFromJson(json);

  /// 画像のリストを返却 nullは除外
  List<String> get toList => [
        frontDefault,
        frontFemale,
        frontShiny,
        frontShinyFemale,
        backDefault,
        backFemale,
        backShiny,
        backShinyFemale
      ].whereType<String>().toList();
}
