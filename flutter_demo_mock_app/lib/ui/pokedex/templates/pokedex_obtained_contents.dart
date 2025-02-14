import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/models/pokedex/pokedex_page_state.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/pokemon_detail.dart';
import 'package:flutter_demo_mock_app/states/pokedex/usecase/pokedex_loaded_case.dart';
import 'package:flutter_demo_mock_app/states/pokedex/usecase/pokedex_obtained_case.dart';
import 'package:flutter_demo_mock_app/ui/pokedex/molecules/pokemon_list_item.dart';
import 'package:flutter_demo_mock_app/ui/pokedex/organisms/pokemon_list_footer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ポケモン図鑑 読み込み済状態 UI
class PokedexObtainedContents extends ConsumerWidget {
  const PokedexObtainedContents({
    super.key,
    required this.state,
    required this.notifier,
  });

  // 読み込み済状態情報
  final PokedexObtained state;
  // 読み込み済状態 ユーザーイベント
  final PokedexObtainedCase notifier;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NotificationListener<ScrollEndNotification>(
      child: ListView(
        children: [
          ...state.pokemons.map(
            (PokemonDetail poke) => Column(
              children: [
                PokemonListItem(
                  pokemon: poke,
                  onTapPokemon: notifier.onTapPokemon,
                ),
              ],
            ),
          ),
          // 追加読み込み状況
          PokemonListFooter(
            state: state,
            notifier: notifier,
          ),
        ],
      ),
      onNotification: (notification) {
        if (state is PokedexLoaded) {
          (notifier as PokedexLoadedCase).onPokemonListScrollEnd(
            notification,
          );
        }
        return false;
      },
    );
  }
}
