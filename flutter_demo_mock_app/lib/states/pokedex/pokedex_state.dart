import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/models/pokedex/pokedex_page_state.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon/pokemon.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon/pokemon_item/pokemon_item.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/pokemon_detail.dart';
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
  final _dio = Dio();

  @override
  PokedexPageState build() {
    // 画面表示時はローディング状態
    return PokedexLoading();
  }

  // 画面表示時の処理
  Future<void> onInitState() async {
    // ポケモン一覧情報を取得
    final response = await _dio.get(
      'https://pokeapi.co/api/v2/pokemon?limit=100',
      options: Options(
        responseType: ResponseType.plain,
      ),
    );

    // 取得結果をパース
    final data = Pokemon.fromJson(
      json.decode(
        response.data.toString(),
      ),
    );

    // 各ポケモンの詳細情報を受け取る
    for (PokemonItem item in data.results) {
      // ポケモンの詳細情報を取得
      final res = await _dio.get(
        item.url,
        options: Options(
          responseType: ResponseType.plain,
        ),
      );

      // 取得結果をパース
      final poke = PokemonDetail.fromJson(
        jsonDecode(
          res.data.toString(),
        ),
      );

      // ポケモンの詳細情報読み込み済のときは
      // 取得したポケモンを一覧に追加
      if (state is PokedexLoaded) {
        final loadedState = (state as PokedexLoaded);
        state = loadedState.copyWith(
          pokemons: [...loadedState.pokemons, poke],
        );
      }

      // ローディング状態のときは
      // 取得したポケモンを追加して読み込み済状態へ移行
      if (state is PokedexLoading) {
        state = PokedexLoaded(
          pokemons: [poke],
        );
      }
    }
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
  Future<void> onClickReloadButton() async {}
}

/// ポケモン図鑑画面の状態をviewへ提供
final pokedexProvider = NotifierProvider<PokedexState, PokedexPageState>(
  PokedexState.new,
);
