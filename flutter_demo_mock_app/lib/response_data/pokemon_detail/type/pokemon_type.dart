import 'package:flutter_demo_mock_app/response_data/pokemon_detail/type/type_detail/pokemon_type_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_type.freezed.dart';
part 'pokemon_type.g.dart';

/// ポケモン タイプ情報
@freezed
class PokemonType with _$PokemonType {
  const factory PokemonType({
    // タイプ番号
    required int slot,
    // タイプ詳細情報
    required PokemonTypeDetail type,
  }) = _PokemonType;

  /// JSONより変換
  factory PokemonType.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeFromJson(json);
}
