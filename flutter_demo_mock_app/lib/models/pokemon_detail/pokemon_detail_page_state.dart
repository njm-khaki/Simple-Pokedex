import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_detail_page_state.freezed.dart';

sealed class PokemonDetailPageState {}

@freezed
class PokemonDetailLoaded extends PokemonDetailPageState with _$PokemonDetailLoaded {
  const factory PokemonDetailLoaded() = _PokemonDetailLoaded;
}