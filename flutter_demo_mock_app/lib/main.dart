import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/routers/router.dart';

void main() {
  runApp(
    MaterialApp.router(
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      theme: ThemeData(
        colorSchemeSeed: Colors.cyan,
      ),
    ),
  );
}
