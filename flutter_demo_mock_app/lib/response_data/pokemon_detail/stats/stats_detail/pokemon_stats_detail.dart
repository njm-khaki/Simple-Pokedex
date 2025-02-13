import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_stats_detail.freezed.dart';
part 'pokemon_stats_detail.g.dart';

// ポケモン 種族値 詳細情報
@freezed
class PokemonStatsDetail with _$PokemonStatsDetail {
  const factory PokemonStatsDetail({
    required String name,
    required String url,
  }) = _PokemonStatsDetail;

  /// JSONより変換
  factory PokemonStatsDetail.fromJson(Map<String, dynamic> json) =>
      _$PokemonStatsDetailFromJson(json);
}
