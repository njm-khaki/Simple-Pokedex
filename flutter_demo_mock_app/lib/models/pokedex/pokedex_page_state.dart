import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokedex_page_state.freezed.dart';

sealed class PokedexPageState {}

@freezed
class PokedexLoading extends PokedexPageState with _$PokedexLoading {
  const factory PokedexLoading() = _PokedexLoading;
}

@freezed
class PokedexLoaded extends PokedexPageState with _$PokedexLoaded {
  const factory PokedexLoaded() = _PokedexLoaded;
}