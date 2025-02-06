import 'package:flutter_demo_mock_app/models/pokemon/pokemon_item/pokemon_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon({
    required int count,
    @Default("") String next,
    @Default("") String previous,
    @Default([]) List<PokemonItem> results,
  }) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
}
