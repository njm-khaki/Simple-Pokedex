import 'dart:io';

import 'package:flutter_demo_mock_app/api/pokeapi/api/v2/pokemon/pokemon_api.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon/pokemon.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon/pokemon_item/pokemon_item.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/ability/pokemon_ability.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/ability/pokemon_ability_detail/pokemon_ability_detail.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/pokemon_detail.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/sprite/pokemon_sprite.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/stats/pokemon_stats.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/stats/stats_detail/pokemon_stats_detail.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/type/pokemon_type.dart';
import 'package:flutter_demo_mock_app/response_data/pokemon_detail/type/type_detail/pokemon_type_detail.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

// PokeAPI モックの起動
void pokemonApiMock() {
  // PokemonAPI用のHTTPクライアント インスタンス生成
  final dio = PokemonApi();

  // モックを起動
  final adapter = DioAdapter(
    dio: dio.dio,
  );

  // ポケモン一覧取得API
  // 適当なポケモン一覧と取得URLを返却する
  adapter.onGet(
    RegExp("https://pokeapi.co/api/v2/pokemon"),
    (server) {
      server.reply(
        HttpStatus.ok,
        Pokemon(
          count: 9999,
          next: "https://pokeapi.co/api/v2/pokemon?limit=100&offset=100R",
          results: List.generate(100, (i) {
            return PokemonItem(
              name: "Poke ${i + 1}",
              url: "https://pokeapi.co/api/v2/pokemon/${i + 1}",
            );
          }).toList(),
        ).toJson(),
      );
    },
  );

  // ポケモン詳細情報取得API
  // 適当なポケモンの情報を返却
  adapter.onGet(
    RegExp("https://pokeapi.co/api/v2/pokemon/[0-9]+"),
    (server) {
      server.reply(
        HttpStatus.ok,
        PokemonDetail(
          name: "Poke",
          sprites: PokemonSprite(),
          types: [
            PokemonType(
              slot: 0,
              type: PokemonTypeDetail(
                name: "grass",
              ),
            ),
          ],
          height: 65,
          weight: 200,
          abilities: [
            PokemonAbility(
              slot: 0,
              isHidden: false,
              ability: PokemonAbilityDetail(
                name: "blaze",
              ),
            )
          ],
          stats: [
            PokemonStats(
              baseStat: 10,
              effort: 0,
              stat: PokemonStatsDetail(
                name: "hp",
                url: "",
              ),
            ),
            PokemonStats(
              baseStat: 20,
              effort: 0,
              stat: PokemonStatsDetail(
                name: "atack",
                url: "",
              ),
            ),
            PokemonStats(
              baseStat: 30,
              effort: 0,
              stat: PokemonStatsDetail(
                name: "special-atack",
                url: "",
              ),
            ),
            PokemonStats(
              baseStat: 40,
              effort: 0,
              stat: PokemonStatsDetail(
                name: "defence",
                url: "",
              ),
            ),
            PokemonStats(
              baseStat: 50,
              effort: 0,
              stat: PokemonStatsDetail(
                name: "special-defence",
                url: "",
              ),
            ),
            PokemonStats(
              baseStat: 60,
              effort: 0,
              stat: PokemonStatsDetail(
                name: "speed",
                url: "",
              ),
            ),
          ],
        ),
      );
    },
  );
}
