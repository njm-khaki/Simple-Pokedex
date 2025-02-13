// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonStatsImpl _$$PokemonStatsImplFromJson(Map<String, dynamic> json) =>
    _$PokemonStatsImpl(
      baseStat: (json['base_stat'] as num).toInt(),
      effort: (json['effort'] as num).toInt(),
      stat: PokemonStatsDetail.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonStatsImplToJson(_$PokemonStatsImpl instance) =>
    <String, dynamic>{
      'base_stat': instance.baseStat,
      'effort': instance.effort,
      'stat': instance.stat,
    };
