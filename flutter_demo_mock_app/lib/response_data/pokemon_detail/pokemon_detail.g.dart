// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonDetailImpl _$$PokemonDetailImplFromJson(Map<String, dynamic> json) =>
    _$PokemonDetailImpl(
      name: json['name'] as String,
      sprites: PokemonSprite.fromJson(json['sprites'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonDetailImplToJson(_$PokemonDetailImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sprites': instance.sprites,
    };
