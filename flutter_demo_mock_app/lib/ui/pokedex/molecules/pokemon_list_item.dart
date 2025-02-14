import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/pokemon_detail.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ポケモン一覧リスト 各ポケモンの表示
class PokemonListItem extends ConsumerWidget {
  const PokemonListItem({
    super.key,
    required this.pokemon,
    required this.onTapPokemon,
  });

  // ポケモンの詳細情報
  final PokemonDetail pokemon;

  // ポケモンをタップしたときの処理
  final void Function(
    BuildContext context,
    PokemonDetail pokemon,
  ) onTapPokemon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ListTile(
          leading: pokemon.sprites.frontDefault != null
              ? Image.network(pokemon.sprites.frontDefault ?? "")
              : Image.asset('assets/images/no_image_pokemon.png'),
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
