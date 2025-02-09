import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/models/pokemon_detail/pokemon_detail_page_state.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/pokemon_detail.dart';
import 'package:flutter_demo_mock_app/states/pokemon_detail/usecase/pokemon_detail_loaded_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ポケモン詳細 読み込み済状態 UI
class PokemonDetailLoadedContents extends ConsumerWidget {
  const PokemonDetailLoadedContents({
    super.key,
    required this.state,
    required this.notifier,
    required this.pokemon,
  });

  // ポケモン詳細 読み込み済状態情報
  final PokemonDetailLoaded state;
  // ポケモン詳細 読み込み済状態 ユーザーイベント
  final PokemonDetailLoadedCase notifier;
  // 表示するポケモンの詳細情報
  final PokemonDetail pokemon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // ポケモンの画像をスライドで表示する
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
    );
  }
}
