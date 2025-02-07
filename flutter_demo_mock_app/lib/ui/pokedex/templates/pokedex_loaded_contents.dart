import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/models/pokedex/pokedex_page_state.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/pokemon_detail.dart';
import 'package:flutter_demo_mock_app/states/pokedex/usecase/pokedex_loaded_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PokedexLoadedContents extends ConsumerWidget {
  const PokedexLoadedContents({
    super.key,
    required this.state,
    required this.notifier,
  });

  final PokedexLoaded state;
  final PokedexLoadedCase notifier;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: state.pokemons
          .map(
            (PokemonDetail poke) => Column(
              children: [
                ListTile(
                  leading: Image.network(
                    poke.sprites.frontDefault ?? "",
                  ),
                  title: Text(
                    poke.name,
                  ),
                  onTap: () => notifier.onTapPokemon(
                    context,
                    poke,
                  ),
                ),
                const Divider(),
              ],
            ),
          )
          .toList(),
    );
  }
}
