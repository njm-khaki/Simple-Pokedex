import 'package:flutter_demo_mock_app/response_data/pokemon_detail/stats/stats_detail/pokemon_stats_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_stats.freezed.dart';
part 'pokemon_stats.g.dart';

// ポケモン 種族値情報
@freezed
class PokemonStats with _$PokemonStats {
  const factory PokemonStats({
    @JsonKey(name: 'base_stat') required int baseStat,
    required int effort,
    required PokemonStatsDetail stat,
  }) = _PokemonStats;

  /// JSONより変換
  factory PokemonStats.fromJson(Map<String, dynamic> json) =>
      _$PokemonStatsFromJson(json);
}
