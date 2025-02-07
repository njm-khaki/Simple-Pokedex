import 'package:flutter_demo_mock_app/models/pokemon_detail/pokemon_detail_page_state.dart';
import 'package:flutter_demo_mock_app/states/pokemon_detail/usecase/pokemon_detail_loaded_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PokemonDetailState extends Notifier<PokemonDetailPageState>
    with PokemonDetailLoadedCase {
  @override
  PokemonDetailPageState build() {
    return PokemonDetailLoaded();
  }
}

final pokemonDetailProvider =
    NotifierProvider<PokemonDetailState, PokemonDetailPageState>(
  PokemonDetailState.new,
);
