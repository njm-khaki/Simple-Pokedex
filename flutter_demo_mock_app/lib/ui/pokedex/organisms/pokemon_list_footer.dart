import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/components/button/retry_button.dart';
import 'package:flutter_demo_mock_app/models/pokedex/pokedex_page_state.dart';
import 'package:flutter_demo_mock_app/states/pokedex/usecase/pokedex_additional_error_case.dart';
import 'package:flutter_demo_mock_app/states/pokedex/usecase/pokedex_obtained_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nil/nil.dart';

/// ポケモン一覧リスト フッター
class PokemonListFooter extends ConsumerWidget {
  const PokemonListFooter({
    super.key,
    required this.state,
    required this.notifier,
  });

  // ポケモン一覧取得済み 状態情報
  final PokedexObtained state;
  // ポケモン一覧取得済み 状態 ユーザーイベント
  final PokedexObtainedCase notifier;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return // 追加読み込み状況
        switch (state) {
      PokedexAdditionalLoading() => Container(
          alignment: Alignment.center,
          child: CircularProgressIndicator(),
        ),
      PokedexAdditionalError() => RetryButton(
          onPressed: (notifier as PokedexAdditionalErrorCase)
              .onTapAddtionalRetryButton,
        ),
      _ => nil,
    };
  }
}
