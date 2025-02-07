import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/models/pokemon_detail/pokemon_detail_page_state.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/pokemon_detail.dart';
import 'package:flutter_demo_mock_app/states/pokemon_detail/pokemon_detail_state.dart';
import 'package:flutter_demo_mock_app/ui/pokemon_detail/templates/pokemon_detail_loaded_contents.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PokemonDetailPage extends ConsumerWidget {
  const PokemonDetailPage({
    super.key,
    required this.pokemon,
  });

  final PokemonDetail pokemon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(pokemonDetailProvider);
    final notifier = ref.read(pokemonDetailProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name),
      ),
      body: switch (state) {
        PokemonDetailLoaded() => PokemonDetailLoadedContents(
            state: state,
            notifier: notifier,
            pokemon: pokemon,
          ),
      },
    );
  }
}
