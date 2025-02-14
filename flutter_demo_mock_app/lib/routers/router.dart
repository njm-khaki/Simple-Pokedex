import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/pokemon_detail.dart';
import 'package:flutter_demo_mock_app/ui/login/login_page.dart';
import 'package:flutter_demo_mock_app/ui/pokedex/pokedex_page.dart';
import 'package:flutter_demo_mock_app/ui/pokemon_detail/pokemon_detail_page.dart';
import 'package:go_router/go_router.dart';

/// 画面遷移設定 TODO: ルーティング設定 設計は要検討
final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'pokedex',
      pageBuilder: (context, state) => MaterialPage(
        child: PokedexPage(),
      ),
    ),
    GoRoute(
      path: '/pokemon_detail',
      name: 'poke_detail',
      pageBuilder: (context, state) => MaterialPage(
        child: PokemonDetailPage(
          pokemon: state.extra as PokemonDetail,
        ),
      ),
    ),
  ],
);
