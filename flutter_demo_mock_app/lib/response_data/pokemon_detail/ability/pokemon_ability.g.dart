// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_ability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonAbilityImpl _$$PokemonAbilityImplFromJson(Map<String, dynamic> json) =>
    _$PokemonAbilityImpl(
      slot: (json['slot'] as num).toInt(),
      isHidden: json['is_hidden'] as bool,
      ability: PokemonAbilityDetail.fromJson(
          json['ability'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonAbilityImplToJson(
        _$PokemonAbilityImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'is_hidden': instance.isHidden,
      'ability': instance.ability,
    };
