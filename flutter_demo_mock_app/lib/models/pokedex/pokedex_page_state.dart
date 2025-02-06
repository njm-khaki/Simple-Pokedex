import 'package:flutter_demo_mock_app/models/pokemon/pokemon_item/pokemon_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokedex_page_state.freezed.dart';

sealed class PokedexPageState {}

@freezed
class PokedexLoading extends PokedexPageState with _$PokedexLoading {
  const factory PokedexLoading() = _PokedexLoading;
}

@freezed
class PokedexLoaded extends PokedexPageState with _$PokedexLoaded {
  const factory PokedexLoaded({
    @Default([]) List<PokemonItem> pokemons,
  }) = _PokedexLoaded;
}
