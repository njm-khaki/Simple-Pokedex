import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/models/pokedex/pokedex_page_state.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/pokemon_detail.dart';
import 'package:flutter_demo_mock_app/response_data/result.dart';
import 'package:flutter_demo_mock_app/sequence/pokemon/pokemon_sequence.dart';
import 'package:flutter_demo_mock_app/sequence/pokemon/pokemon_sequence_result.dart';
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
  final _pokeSequence = PokemonSequence();

  @override
  PokedexPageState build() {
    // 画面表示時はローディング状態
    return PokedexLoading();
  }

  // 画面表示時の処理
  Future<void> onInitState() async {
    final result = await _pokeSequence.getPokemonList();

    // ポケモン一覧を取得して画面更新
    state = switch (result) {
      // 一覧取得成功 取得したポケモンの一覧を表示
      Success<PokemonSequenceResult, Exception> poke => PokedexLoaded(
          pokemons: poke.value.pokemons,
          next: poke.value.next,
        ),
      // ポケモン一覧取得失敗 エラー表示
      Failure _ => PokedexLoadingError(),
    };
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

    // ポケモン一覧を取得
    final result = await _pokeSequence.getPokemonList();

    // ポケモン一覧取得結果を画面に反映
    state = switch (result) {
      // 取得成功したらポケモン一覧を表示
      Success<PokemonSequenceResult, Exception> poke => PokedexLoaded(
          pokemons: poke.value.pokemons,
          next: poke.value.next,
        ),
      // 一覧取得に失敗したらエラー表示
      Failure _ => PokedexLoadingError(),
    };
  }

  /// ポケモン追加読み込みリトライ時の処理
  @override
  Future<void> onTapAddtionalRetryButton() async {
    // 追加読み込みエラー状態のはず
    if (state is! PokedexAdditionalError) {
      return;
    }

    // 実行前の状態を保持しておく
    final errorState = (state as PokedexAdditionalError);

    // 追加読み込み中の表示にする
    state = PokedexAdditionalLoading(
      pokemons: errorState.pokemons,
      next: errorState.next,
    );

    // 追加のポケモンを取得
    final response = await _pokeSequence.getPokemonList(
      url: errorState.next,
    );

    // 取得結果に応じて画面更新
    state = switch (response) {
      // 追加読み込み成功 取得したポケモンを追加して表示
      Success<PokemonSequenceResult, Exception> poke => PokedexLoaded(
          pokemons: [
            ...errorState.pokemons,
            ...poke.value.pokemons,
          ],
          next: poke.value.next,
        ),
      // 追加取得失敗 追加読み込み失敗表示
      Failure _ => errorState,
    };
  }

  /// ポケモンリストをスクロールしたときの処理
  @override
  Future<void> onPokemonListScrollEnd(
    ScrollEndNotification notification,
  ) async {
    // 読み込み済以外では何もしない
    if (state is! PokedexLoaded) {
      return;
    }

    // 追加読み込み前の状態を保持
    final PokedexLoaded loadData = (state as PokedexLoaded);

    // 次に読み込む情報がなければ何もしない
    if (loadData.next == null) {
      return;
    }

    // スクロールし終わったのが
    // リストの末端ではないときは何もせずに終了
    if (notification.metrics.pixels != notification.metrics.maxScrollExtent) {
      return;
    }

    // 追加読み込み中の表示にする
    state = PokedexAdditionalLoading(
      pokemons: loadData.pokemons,
      next: loadData.next,
    );

    // 追加のポケモンを取得
    final response = await _pokeSequence.getPokemonList(
      url: loadData.next,
    );

    // 追加のポケモンを取得した結果に応じて画面更新
    state = switch (response) {
      // 追加取得成功 取得したポケモンリストに追加して表示
      Success<PokemonSequenceResult, Exception> poke => loadData.copyWith(
          pokemons: [
            ...loadData.pokemons,
            ...poke.value.pokemons,
          ],
          next: response.value.next,
        ),
      // 追加取得失敗 追加取得失敗エラー表示をする
      Failure _ => PokedexAdditionalError(
          pokemons: loadData.pokemons,
          next: loadData.next,
        ),
    };
  }
}

/// ポケモン図鑑画面の状態をviewへ提供
final pokedexProvider = NotifierProvider<PokedexState, PokedexPageState>(
  PokedexState.new,
);
