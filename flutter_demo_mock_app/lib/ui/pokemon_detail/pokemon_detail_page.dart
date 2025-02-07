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

    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CarouselSlider.builder(
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height / 4,
                  enableInfiniteScroll: false,
                ),
                itemCount: pokemon.sprites.toList.length,
                itemBuilder: (context, index, realIndex) {
                  return Image.network(
                    pokemon.sprites.toList[index],
                    fit: BoxFit.contain,
                  );
                },
              ),
              Text(pokemon.name),
            ],
          ),
        ],
      ),
    );
  }
}
