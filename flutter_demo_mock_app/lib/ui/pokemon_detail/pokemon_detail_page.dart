import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/models/pokemon_detail/pokemon_detail.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PokemonDetailPage extends ConsumerWidget {
  const PokemonDetailPage({
    super.key,
    required this.pokemon,
  });

  final PokemonDetail pokemon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sprites = [
      pokemon.sprites.frontDefault,
      pokemon.sprites.frontFemale,
      pokemon.sprites.frontShiny,
      pokemon.sprites.frontShinyFemale,
      pokemon.sprites.backDefault,
      pokemon.sprites.backFemale,
      pokemon.sprites.backShiny,
      pokemon.sprites.backShinyFemale,
    ].where((url) => url != null).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
              options: CarouselOptions(
                initialPage: 1,
                viewportFraction: 1,
                enableInfiniteScroll: false,
              ),
              itemCount: sprites.length,
              itemBuilder: (context, index, realIndex) {
                return Image.network(
                  sprites[index] ?? "",
                );
              },
            ),
            Text(pokemon.name),
          ],
        ),
      ),
    );
  }
}
