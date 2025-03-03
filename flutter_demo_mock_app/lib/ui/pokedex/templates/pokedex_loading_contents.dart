import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/models/pokedex/pokedex_page_state.dart';
import 'package:flutter_demo_mock_app/states/pokedex/usecase/pokedex_loaded_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ポケモン図鑑 ローディング状態 UI
class PokedexLoadingContents extends ConsumerWidget {
  const PokedexLoadingContents({
    super.key,
    required this.state,
    required this.notifier,
  });

  // ポケモン図鑑 ローディング状態情報
  final PokedexLoading state;
  // ポケモン図鑑 ローディング状態 ユーザーイベント
  final PokedexLoadedCase notifier;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 読み込み中ではスピナーを表示
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          Text('now loading...'),
        ],
      ),
    );
  }
}
