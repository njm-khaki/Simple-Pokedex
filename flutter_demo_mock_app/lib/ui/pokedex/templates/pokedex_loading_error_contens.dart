import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/models/pokedex/pokedex_page_state.dart';
import 'package:flutter_demo_mock_app/states/pokedex/usecase/pokedex_loading_error_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ポケモン図鑑 読み込みエラー状態 UI
class PokedexLoadingErrorContents extends ConsumerWidget {
  const PokedexLoadingErrorContents({
    super.key,
    required this.state,
    required this.notifier,
  });

  // ポケモン図鑑 読み込みエラー状態情報
  final PokedexLoadingError state;
  // ポケモン図鑑 読み込みエラー状態 ユーザーイベント
  final PokedexLoadingErrorCase notifier;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Loading Error!!'),
          ElevatedButton(
            onPressed: notifier.onClickReloadButton,
            child: Text('Retry'),
          ),
        ],
      ),
    );
  }
}
