import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/pokemon_detail.dart';

abstract mixin class PokedexLoadedCase {
  void onTapPokemon(
    BuildContext context,
    PokemonDetail pokemon,
  );
}