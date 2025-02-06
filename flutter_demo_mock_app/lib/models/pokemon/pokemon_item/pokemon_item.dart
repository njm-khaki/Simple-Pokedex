import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_item.freezed.dart';
part 'pokemon_item.g.dart';

@freezed
class PokemonItem with _$PokemonItem {
  const factory PokemonItem({
    @Default("") String name,
    @Default("") String url,
    @Default("") String image,
  }) = _PokemonItem;

  factory PokemonItem.fromJson(Map<String, dynamic> json) =>
      _$PokemonItemFromJson(json);
}
