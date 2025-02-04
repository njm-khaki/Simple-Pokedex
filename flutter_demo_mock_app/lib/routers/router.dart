import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/ui/login/login_page.dart';
import 'package:go_router/go_router.dart';

/// 画面遷移設定
final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'login',
      pageBuilder: (context, state) {
        return MaterialPage(
          child: LoginPage(title: 'Pokedex'),
        );
      },
    ),
  ],
);
