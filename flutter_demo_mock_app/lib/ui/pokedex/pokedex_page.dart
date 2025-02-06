import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/models/pokedex/pokedex_page_state.dart';
import 'package:flutter_demo_mock_app/states/pokedex/pokedex_state.dart';
import 'package:flutter_demo_mock_app/ui/pokedex/templates/loaded_contents.dart';
import 'package:flutter_demo_mock_app/ui/pokedex/templates/loading_contents.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PokedexPage extends ConsumerWidget {
  const PokedexPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(pokedexProvider);
    final notifier = ref.read(pokedexProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text('Pokedex'),
      ),
      body: switch (state) {
        PokedexLoading() => LoadingContents(
            state: state,
            notifier: notifier,
          ),
        PokedexLoaded() => LoadedContents(
            state: state,
            notifier: notifier,
          ),
      },
    );
  }
}
