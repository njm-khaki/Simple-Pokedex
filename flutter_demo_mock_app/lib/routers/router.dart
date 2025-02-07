import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/pokemon_detail.dart';
import 'package:flutter_demo_mock_app/ui/login/login_page.dart';
import 'package:flutter_demo_mock_app/ui/pokedex/pokedex_page.dart';
import 'package:flutter_demo_mock_app/ui/pokemon_detail/pokemon_detail_page.dart';
import 'package:go_router/go_router.dart';

/// 画面遷移設定
final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'login',
      pageBuilder: (context, state) => MaterialPage(
        child: LoginPage(),
      ),
    ),
    GoRoute(
      path: '/pokedex',
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
