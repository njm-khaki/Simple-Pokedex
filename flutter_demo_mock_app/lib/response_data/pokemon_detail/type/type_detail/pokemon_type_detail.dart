import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_type_detail.freezed.dart';
part 'pokemon_type_detail.g.dart';

// ポケモン タイプ詳細情報
@freezed
class PokemonTypeDetail with _$PokemonTypeDetail {
  const factory PokemonTypeDetail({
    @Default("") String name,
    @Default(null) String? url,
  }) = _PokemonTypeDetail;

  /// JSONより変換
  factory PokemonTypeDetail.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeDetailFromJson(json);
}
