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

    state = switch (result) {
      Success<PokemonSequenceResult, Exception> poke => PokedexLoaded(
          pokemons: poke.value.pokemons,
          next: poke.value.next,
        ),
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
    final result = await _pokeSequence.getPokemonList();

    if (result is Failure) {
      state = PokedexLoadingError();
      return;
    }

    state = switch (result) {
      Success<PokemonSequenceResult, Exception> poke => PokedexLoaded(
          pokemons: poke.value.pokemons,
          next: poke.value.next,
        ),
      Failure _ => PokedexLoadingError(),
    };
  }

  @override
  Future<void> onTapAddtionalRetryButton() async {
    if (state is! PokedexAdditionalError) {
      return;
    }

    final errorState = (state as PokedexAdditionalError);
    state = PokedexAdditionalLoading(
      pokemons: errorState.pokemons,
      next: errorState.next,
    );

    final response = await _pokeSequence.getPokemonList(url: errorState.next);

    state = switch (response) {
      Success<PokemonSequenceResult, Exception> poke => PokedexLoaded(
          pokemons: [
            ...errorState.pokemons,
            ...poke.value.pokemons,
          ],
          next: poke.value.next,
        ),
      Failure _ => errorState,
    };
  }

  @override
  Future<void> onPokemonListScrollEnd(
    ScrollEndNotification notification,
  ) async {
    if (state is! PokedexLoaded) {
      return;
    }

    final PokedexLoaded loadData = (state as PokedexLoaded);

    if (loadData.next == null) {
      return;
    }

    if (notification.metrics.pixels == notification.metrics.maxScrollExtent) {
      return;
    }

    state = PokedexAdditionalLoading(
      pokemons: loadData.pokemons,
      next: loadData.next,
    );

    final response = await _pokeSequence.getPokemonList(
      url: loadData.next,
    );

    state = switch (response) {
      Success<PokemonSequenceResult, Exception> poke => loadData.copyWith(
          pokemons: [
            ...loadData.pokemons,
            ...poke.value.pokemons,
          ],
          next: response.value.next,
        ),
      Failure _ => PokedexAdditionalError(
          pokemons: loadData.pokemons,
          next: loadData.next,
        )
    };
  }
}

/// ポケモン図鑑画面の状態をviewへ提供
final pokedexProvider = NotifierProvider<PokedexState, PokedexPageState>(
  PokedexState.new,
);
