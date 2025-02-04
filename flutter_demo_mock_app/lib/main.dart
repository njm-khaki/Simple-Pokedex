import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/routers/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp.router(
        routerDelegate: router.routerDelegate,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
        theme: ThemeData(
          colorSchemeSeed: Colors.cyan,
        ),
      ),
    ),
  );
}
