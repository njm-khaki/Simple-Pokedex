// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_sprite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonSprite _$PokemonSpriteFromJson(Map<String, dynamic> json) {
  return _PokemonSprite.fromJson(json);
}

/// @nodoc
mixin _$PokemonSprite {
  @JsonKey(name: 'back_default')
  String? get backDefault => throw _privateConstructorUsedError;

  /// Serializes this PokemonSprite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonSprite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonSpriteCopyWith<PokemonSprite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpriteCopyWith<$Res> {
  factory $PokemonSpriteCopyWith(
          PokemonSprite value, $Res Function(PokemonSprite) then) =
      _$PokemonSpriteCopyWithImpl<$Res, PokemonSprite>;
  @useResult
  $Res call({@JsonKey(name: 'back_default') String? backDefault});
}

/// @nodoc
class _$PokemonSpriteCopyWithImpl<$Res, $Val extends PokemonSprite>
    implements $PokemonSpriteCopyWith<$Res> {
  _$PokemonSpriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonSprite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backDefault = freezed,
  }) {
    return _then(_value.copyWith(
      backDefault: freezed == backDefault
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonSpriteImplCopyWith<$Res>
    implements $PokemonSpriteCopyWith<$Res> {
  factory _$$PokemonSpriteImplCopyWith(
          _$PokemonSpriteImpl value, $Res Function(_$PokemonSpriteImpl) then) =
      __$$PokemonSpriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'back_default') String? backDefault});
}

/// @nodoc
class __$$PokemonSpriteImplCopyWithImpl<$Res>
    extends _$PokemonSpriteCopyWithImpl<$Res, _$PokemonSpriteImpl>
    implements _$$PokemonSpriteImplCopyWith<$Res> {
  __$$PokemonSpriteImplCopyWithImpl(
      _$PokemonSpriteImpl _value, $Res Function(_$PokemonSpriteImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonSprite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backDefault = freezed,
  }) {
    return _then(_$PokemonSpriteImpl(
      backDefault: freezed == backDefault
          ? _value.backDefault
          : backDefault // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSpriteImpl implements _PokemonSprite {
  const _$PokemonSpriteImpl(
      {@JsonKey(name: 'back_default') this.backDefault = null});

  factory _$PokemonSpriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSpriteImplFromJson(json);

  @override
  @JsonKey(name: 'back_default')
  final String? backDefault;

  @override
  String toString() {
    return 'PokemonSprite(backDefault: $backDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpriteImpl &&
            (identical(other.backDefault, backDefault) ||
                other.backDefault == backDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, backDefault);

  /// Create a copy of PokemonSprite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpriteImplCopyWith<_$PokemonSpriteImpl> get copyWith =>
      __$$PokemonSpriteImplCopyWithImpl<_$PokemonSpriteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSpriteImplToJson(
      this,
    );
  }
}

abstract class _PokemonSprite implements PokemonSprite {
  const factory _PokemonSprite(
          {@JsonKey(name: 'back_default') final String? backDefault}) =
      _$PokemonSpriteImpl;

  factory _PokemonSprite.fromJson(Map<String, dynamic> json) =
      _$PokemonSpriteImpl.fromJson;

  @override
  @JsonKey(name: 'back_default')
  String? get backDefault;

  /// Create a copy of PokemonSprite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonSpriteImplCopyWith<_$PokemonSpriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
