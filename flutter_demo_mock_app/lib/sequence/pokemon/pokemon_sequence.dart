import 'package:flutter_demo_mock_app/api/pokeapi/api/v2/pokemon/pokemon_api.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon/pokemon.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon/pokemon_item/pokemon_item.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/pokemon_detail.dart';
import 'package:flutter_demo_mock_app/response_data/result.dart';
import 'package:flutter_demo_mock_app/sequence/pokemon/pokemon_sequence_result.dart';

/// ポケモン一覧取得シーケンス
final class PokemonSequence {
  /// ポケモンAPI HTTPクライアント
  final _pokeApi = PokemonApi();

  /// ポケモン一覧取得
  /// ポケモン一覧取得URLを[url]で渡す
  Future<Result<PokemonSequenceResult, Exception>> getPokemonList({
    String? url,
  }) async {
    // ポケモン一覧の取得
    final response = await _pokeApi.getPokemonOrderLimit(
      url: url,
    );

    // 何かしらの異常系なら終了
    if (response is Failure<Pokemon, Exception>) {
      return Failure(response.exception);
    }

    // 型チェック 正常系であることを確認
    if (response is! Success<Pokemon, Exception>) {
      return Failure(Exception());
    }

    // ポケモン詳細情報リスト
    final List<PokemonDetail> pokeList = [];

    // 各ポケモンの詳細情報を受け取る
    for (PokemonItem item in response.value.results) {
      // ポケモンの詳細情報を取得
      final response = await _pokeApi.getPokemonDetailByIndex(item.url);

      // ポケモン詳細情報の取得に失敗しらら終了
      if (response is Failure<PokemonDetail, Exception>) {
        return Failure(response.exception);
      }

      // 型チェック 正常系であることを確認
      if (response is! Success<PokemonDetail, Exception>) {
        continue;
      }

      // 取得したポケモン詳細情報を追加
      pokeList.add(response.value);
    }

    // ポケモン一覧を返却
    return Success(
      PokemonSequenceResult(
        pokemons: pokeList,
        next: response.value.next,
      ),
    );
  }
}
