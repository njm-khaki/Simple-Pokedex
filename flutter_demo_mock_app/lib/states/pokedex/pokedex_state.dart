import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_demo_mock_app/models/pokedex/pokedex_page_state.dart';
import 'package:flutter_demo_mock_app/models/pokemon/pokemon.dart';
import 'package:flutter_demo_mock_app/models/pokemon/pokemon_item/pokemon_item.dart';
import 'package:flutter_demo_mock_app/models/pokemon_detail/pokemon_detail.dart';
import 'package:flutter_demo_mock_app/states/pokedex/usecase/loaded_case.dart';
import 'package:flutter_demo_mock_app/states/pokedex/usecase/loading_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PokedexState extends Notifier<PokedexPageState>
    with LoadingCase, LoadedCase {
  final _dio = Dio();

  @override
  PokedexPageState build() {
    return PokedexLoading();
  }

  Future<void> onInitState() async {
    final response = await _dio.get(
      'https://pokeapi.co/api/v2/pokemon?limit=100',
      options: Options(
        responseType: ResponseType.plain,
      ),
    );

    final data = Pokemon.fromJson(
      json.decode(
        response.data.toString(),
      ),
    );

    for (PokemonItem item in data.results) {
      final res = await _dio.get(
        item.url,
        options: Options(
          responseType: ResponseType.plain,
        ),
      );
      
      final poke = PokemonDetail.fromJson(
        jsonDecode(
          res.data.toString(),
        ),
      );

      if (state is PokedexLoading) {
        state = PokedexLoaded(
          pokemons: [poke],
        );
        continue;
      }

      if (state is PokedexLoaded) {
        final loadedState = (state as PokedexLoaded);
        state = loadedState.copyWith(
          pokemons: [...loadedState.pokemons, poke],
        );
      }
    }

    // state = PokedexLoaded(
    //   pokemons: data.results
    //       .asMap()
    //       .entries
    //       .map(
    //         (entry) => entry.value.copyWith(
    //           url:
    //               'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${entry.key + 1}.png',
    //         ),
    //       )
    //       .toList(),
    // );
  }
}

final pokedexProvider = NotifierProvider<PokedexState, PokedexPageState>(
  PokedexState.new,
);
