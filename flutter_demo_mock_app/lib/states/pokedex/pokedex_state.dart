import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/api/pokeapi/api/v2/pokemon/pokemon_api.dart';
import 'package:flutter_demo_mock_app/models/pokedex/pokedex_page_state.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon/pokemon.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon/pokemon_item/pokemon_item.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/pokemon_detail.dart';
import 'package:flutter_demo_mock_app/response_data/result.dart';
import 'package:flutter_demo_mock_app/states/pokedex/usecase/pokedex_additional_error_case.dart';
import 'package:flutter_demo_mock_app/states/pokedex/usecase/pokedex_additional_loading_case.dart';
import 'package:flutter_demo_mock_app/states/pokedex/usecase/pokedex_loaded_case.dart';
import 'package:flutter_demo_mock_app/states/pokedex/usecase/pokedex_loading_case.dart';
import 'package:flutter_demo_mock_app/states/pokedex/usecase/pokedex_loading_error_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// ポケモン図鑑画面 状態
class PokedexState extends Notifier<PokedexPageState>
    implements
        PokedexAdditionalErrorCase,
        PokedexAdditionalLoadingCase,
        PokedexLoadingCase,
        PokedexLoadingErrorCase,
        PokedexLoadedCase {
  // HTTPクライアント
  // TODO: HTTP通信周りの設計は要検討
  final _pokeApi = PokemonApi();

  @override
  PokedexPageState build() {
    // 画面表示時はローディング状態
    return PokedexLoading();
  }

  // 画面表示時の処理
  Future<void> onInitState() async {
    // ポケモン一覧情報を取得
    final response = await _pokeApi.getPokemonOrderLimit();

    if (response is Failure<Pokemon, Exception>) {
      state = PokedexLoadingError();
      return;
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
        state = PokedexLoadingError();
        return;
      }

      if (response is Success<PokemonDetail, Exception>) {
        pokeList.add(response.value);
      }
    }

    state = PokedexLoaded(
      pokemons: pokeList,
      previous: poke.previous,
      next: poke.next,
    );
  }

  /// ポケモンをタップしたときの処理
  @override
  void onTapPokemon(
    BuildContext context,
    PokemonDetail pokemon,
  ) {
    // ポケモン詳細画面へ遷移
    context.pushNamed(
      'poke_detail',
      extra: pokemon,
    );
  }

  /// 再読み込みボタン押下時の処理
  @override
  Future<void> onClickReloadButton() async {
    // ローディング状態へ移行
    state = PokedexLoading();
    // 画面表示時と同様の動作
    // TODO: 冗長なので要検討
    onInitState();
  }

  @override
  Future<void> onTapAddtionalRetryButton() async {}
}

/// ポケモン図鑑画面の状態をviewへ提供
final pokedexProvider = NotifierProvider<PokedexState, PokedexPageState>(
  PokedexState.new,
);
