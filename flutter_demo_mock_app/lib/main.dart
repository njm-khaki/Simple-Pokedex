import 'package:flutter/material.dart';
import 'package:flutter_demo_mock_app/app.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_demo_mock_app/mocks/simple_pokedex_mock.dart';

void main() async {
  // 環境変数の読み込み
  await dotenv.load(fileName: '.env');

  // モックの起動
  if (dotenv.get('USE_POKEAPI_MOCK') == 'true') {
    simplePokedexMock();
  }

  // アプリの実行
  runApp(App());
}
