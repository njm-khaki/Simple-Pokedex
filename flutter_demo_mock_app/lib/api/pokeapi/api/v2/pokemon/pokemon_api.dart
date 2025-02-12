import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon/pokemon.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/pokemon_detail.dart';
import 'package:flutter_demo_mock_app/response_data/result.dart';

/// ポケモンAPI
class PokemonApi with DioMixin implements Dio {
  static const _defaultUrl = 'https://pokeapi.co/api/v2/pokemon?limit=100';

  final _dio = Dio(
    BaseOptions(
      receiveTimeout: Duration(seconds: 10),
      baseUrl: "https://pokeapi.co/api/v2/pokemon",
      responseType: ResponseType.json,
    ),
  );

  Future<Result<Pokemon, Exception>> getPokemonOrderLimit({
    String? url,
  }) async {
    try {
      final response = await _dio.get(url ?? _defaultUrl);
      if (response.statusCode != HttpStatus.ok) {
        return Failure(
          Exception(response.statusMessage),
        );
      }

      return Success(
        Pokemon.fromJson(response.data),
      );
    } on Exception catch (error) {
      return Failure(error);
    }
  }

  Future<Result<PokemonDetail, Exception>> getPokemonDetailByIndex(
    String url,
  ) async {
    try {
      final response = await _dio.get(url);
      if (response.statusCode != HttpStatus.ok) {
        return Failure(
          Exception(response.statusMessage),
        );
      }

      return Success(
        PokemonDetail.fromJson(response.data),
      );
    } on Exception catch (error) {
      return Failure(error);
    }
  }
}
