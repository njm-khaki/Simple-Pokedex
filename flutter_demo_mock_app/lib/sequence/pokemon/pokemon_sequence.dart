import 'package:flutter_demo_mock_app/api/pokeapi/api/v2/pokemon/pokemon_api.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon/pokemon.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon/pokemon_item/pokemon_item.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/pokemon_detail.dart';
import 'package:flutter_demo_mock_app/response_data/result.dart';
import 'package:flutter_demo_mock_app/sequence/pokemon/pokemon_sequence_result.dart';

final class PokemonSequence {
  final _pokeApi = PokemonApi();

  Future<Result<PokemonSequenceResult, Exception>> getPokemonList({
    String? url,
  }) async {
    final response = await _pokeApi.getPokemonOrderLimit();

    if (response is Failure<Pokemon, Exception>) {
      return Failure(response.exception);
    }

    Pokemon poke = Pokemon(count: 0);
    final List<PokemonDetail> pokeList = [];
    if (response is Success<Pokemon, Exception>) {
      poke = response.value;
    }

    // 各ポケモンの詳細情報を受け取る
    for (PokemonItem item in poke.results) {
      // ポケモンの詳細情報を取得
      final response = await _pokeApi.getPokemonDetailByIndex(item.url);

      if (response is Failure<PokemonDetail, Exception>) {
        return Failure(response.exception);
      }

      if (response is Success<PokemonDetail, Exception>) {
        pokeList.add(response.value);
      }
    }

    return Success(
      PokemonSequenceResult(
        pokemons: pokeList,
        next: poke.next,
        previous: poke.previous,
      ),
    );
  }
}
