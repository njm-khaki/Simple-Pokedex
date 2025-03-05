import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_item.freezed.dart';
part 'pokemon_item.g.dart';

/// ポケモン情報クラス
@freezed
class PokemonItem with _$PokemonItem {
  const factory PokemonItem({
    // ポケモン名
    @Default("") String name,
    // ポケモン情報取得URL
    @Default("") String url,
    // ポケモン画像 URL
    @Default(null) String? image,
  }) = _PokemonItem;

  /// JSONより変換
  factory PokemonItem.fromJson(Map<String, dynamic> json) =>
      _$PokemonItemFromJson(json);
}
