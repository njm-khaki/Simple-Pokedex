import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/models/pokedex/pokedex_page_state.dart';
import 'package:flutter_demo_mock_app/states/pokedex/usecase/loaded_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoadingContents extends ConsumerWidget {
  const LoadingContents({
    super.key,
    required this.state,
    required this.notifier,
  });

  final PokedexLoading state;
  final LoadedCase notifier;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
