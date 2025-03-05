import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon/pokemon.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/pokemon_detail.dart';
import 'package:flutter_demo_mock_app/response_data/result.dart';

/// ポケモンAPI
class PokemonApi {
  // シングルトン 単一インスタンスのみを生成
  PokemonApi._internal();

  static final instance = PokemonApi._internal();

  factory PokemonApi() => instance;

  // APIの基本URL
  static const _baseUrl = "https://pokeapi.co/api/v2/pokemon?limit=100";

  // Dio(HTTPクライアント)インスタンス
  final dio = Dio(
    BaseOptions(
      baseUrl: _baseUrl,
      responseType: ResponseType.json,
    ),
  );

  /// ポケモン一覧取得API呼び出し
  /// 既に取得URLをAPIから受け取っている場合は[url]に指定する
  Future<Result<Pokemon, Exception>> getPokemonOrderLimit({
    String? url,
  }) async {
    try {
      // ポケモン一覧取得APIを呼び出し
      final response = await dio.get(url ?? _baseUrl);

      // 200 OK以外は異常系
      if (response.statusCode != HttpStatus.ok) {
        return Failure(
          Exception(response.statusMessage),
        );
      }

      // 取得したポケモン一覧を返却
      return Success(
        Pokemon.fromJson(response.data),
      );
    } on Exception catch (error) {
      // 何かしらのExceptionを拾ったらそれを返却
      return Failure(error);
    }
  }

  /// ポケモン詳細情報取得API 呼び出し
  /// ポケモン詳細情報取得URLを[url]に指定する
  Future<Result<PokemonDetail, Exception>> getPokemonDetailByIndex(
    String url,
  ) async {
    try {
      // ポケモン詳細情報を取得
      final response = await dio.get(url);

      // 200 OK以外は異常系
      if (response.statusCode != HttpStatus.ok) {
        return Failure(
          Exception(response.statusMessage),
        );
      }

      // 取得したポケモン詳細情報を返却
      return Success(
        PokemonDetail.fromJson(response.data),
      );
    } on Exception catch (error) {
      // 何かしらのExceptionを拾ったらそれを返却
      return Failure(error);
    }
  }
}
