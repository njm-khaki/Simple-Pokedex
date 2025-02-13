import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/pokemon_detail.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PokemonListItem extends ConsumerWidget {
  const PokemonListItem({
    super.key,
    required this.pokemon,
    required this.onTapPokemon,
  });

  final PokemonDetail pokemon;

  final void Function(
    BuildContext context,
    PokemonDetail pokemon,
  ) onTapPokemon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ListTile(
          leading: Image.network(
            pokemon.sprites.frontDefault ??
                "https://pokeboon.com/jp/wp-content/uploads/2019/05/no-image_pokemon.png",
          ),
          title: Text(
            pokemon.name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          onTap: () => onTapPokemon(
            context,
            pokemon,
          ),
        ),
        const Divider(),
      ],
    );
  }
}
