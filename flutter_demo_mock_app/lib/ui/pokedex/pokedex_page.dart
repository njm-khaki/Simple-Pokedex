import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/models/pokedex/pokedex_page_state.dart';
import 'package:flutter_demo_mock_app/states/pokedex/pokedex_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PokedexPage extends ConsumerWidget {
  const PokedexPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(pokedexProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Pokedex'),
      ),
      body: switch (state) {
        PokedexLoading() => Center(
            child: Text('loading'),
          ),
        PokedexLoaded() => Center(
            child: Text('loaded'),
          ),
      },
    );
  }
}
