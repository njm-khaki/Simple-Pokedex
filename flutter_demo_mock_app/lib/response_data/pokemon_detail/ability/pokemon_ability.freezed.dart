// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_ability.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonAbility _$PokemonAbilityFromJson(Map<String, dynamic> json) {
  return _PokemonAbility.fromJson(json);
}

/// @nodoc
mixin _$PokemonAbility {
// 特性番号
  int get slot => throw _privateConstructorUsedError; // 隠し特性(夢特性)フラグ
  @JsonKey(name: 'is_hidden')
  bool get isHidden => throw _privateConstructorUsedError; // 特性詳細情報
  PokemonAbilityDetail get ability => throw _privateConstructorUsedError;

  /// Serializes this PokemonAbility to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonAbility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonAbilityCopyWith<PokemonAbility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonAbilityCopyWith<$Res> {
  factory $PokemonAbilityCopyWith(
          PokemonAbility value, $Res Function(PokemonAbility) then) =
      _$PokemonAbilityCopyWithImpl<$Res, PokemonAbility>;
  @useResult
  $Res call(
      {int slot,
      @JsonKey(name: 'is_hidden') bool isHidden,
      PokemonAbilityDetail ability});

  $PokemonAbilityDetailCopyWith<$Res> get ability;
}

/// @nodoc
class _$PokemonAbilityCopyWithImpl<$Res, $Val extends PokemonAbility>
    implements $PokemonAbilityCopyWith<$Res> {
  _$PokemonAbilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonAbility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? isHidden = null,
    Object? ability = null,
  }) {
    return _then(_value.copyWith(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as PokemonAbilityDetail,
    ) as $Val);
  }

  /// Create a copy of PokemonAbility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonAbilityDetailCopyWith<$Res> get ability {
    return $PokemonAbilityDetailCopyWith<$Res>(_value.ability, (value) {
      return _then(_value.copyWith(ability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonAbilityImplCopyWith<$Res>
    implements $PokemonAbilityCopyWith<$Res> {
  factory _$$PokemonAbilityImplCopyWith(_$PokemonAbilityImpl value,
          $Res Function(_$PokemonAbilityImpl) then) =
      __$$PokemonAbilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int slot,
      @JsonKey(name: 'is_hidden') bool isHidden,
      PokemonAbilityDetail ability});

  @override
  $PokemonAbilityDetailCopyWith<$Res> get ability;
}

/// @nodoc
class __$$PokemonAbilityImplCopyWithImpl<$Res>
    extends _$PokemonAbilityCopyWithImpl<$Res, _$PokemonAbilityImpl>
    implements _$$PokemonAbilityImplCopyWith<$Res> {
  __$$PokemonAbilityImplCopyWithImpl(
      _$PokemonAbilityImpl _value, $Res Function(_$PokemonAbilityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonAbility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? isHidden = null,
    Object? ability = null,
  }) {
    return _then(_$PokemonAbilityImpl(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as PokemonAbilityDetail,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonAbilityImpl implements _PokemonAbility {
  const _$PokemonAbilityImpl(
      {required this.slot,
      @JsonKey(name: 'is_hidden') required this.isHidden,
      required this.ability});

  factory _$PokemonAbilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonAbilityImplFromJson(json);

// 特性番号
  @override
  final int slot;
// 隠し特性(夢特性)フラグ
  @override
  @JsonKey(name: 'is_hidden')
  final bool isHidden;
// 特性詳細情報
  @override
  final PokemonAbilityDetail ability;

  @override
  String toString() {
    return 'PokemonAbility(slot: $slot, isHidden: $isHidden, ability: $ability)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonAbilityImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.ability, ability) || other.ability == ability));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, slot, isHidden, ability);

  /// Create a copy of PokemonAbility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonAbilityImplCopyWith<_$PokemonAbilityImpl> get copyWith =>
      __$$PokemonAbilityImplCopyWithImpl<_$PokemonAbilityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonAbilityImplToJson(
      this,
    );
  }
}

abstract class _PokemonAbility implements PokemonAbility {
  const factory _PokemonAbility(
      {required final int slot,
      @JsonKey(name: 'is_hidden') required final bool isHidden,
      required final PokemonAbilityDetail ability}) = _$PokemonAbilityImpl;

  factory _PokemonAbility.fromJson(Map<String, dynamic> json) =
      _$PokemonAbilityImpl.fromJson;

// 特性番号
  @override
  int get slot; // 隠し特性(夢特性)フラグ
  @override
  @JsonKey(name: 'is_hidden')
  bool get isHidden; // 特性詳細情報
  @override
  PokemonAbilityDetail get ability;

  /// Create a copy of PokemonAbility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonAbilityImplCopyWith<_$PokemonAbilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
