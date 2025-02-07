import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/models/pokemon_detail/pokemon_detail.dart';

abstract mixin class LoadedCase {
  void onTapPokemon(
    BuildContext context,
    PokemonDetail pokemon,
  );
}