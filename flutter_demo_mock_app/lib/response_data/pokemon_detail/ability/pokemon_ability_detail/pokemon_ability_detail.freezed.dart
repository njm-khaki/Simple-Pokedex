// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_ability_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonAbilityDetail _$PokemonAbilityDetailFromJson(Map<String, dynamic> json) {
  return _PokemonAbilityDetail.fromJson(json);
}

/// @nodoc
mixin _$PokemonAbilityDetail {
  String get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this PokemonAbilityDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonAbilityDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonAbilityDetailCopyWith<PokemonAbilityDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonAbilityDetailCopyWith<$Res> {
  factory $PokemonAbilityDetailCopyWith(PokemonAbilityDetail value,
          $Res Function(PokemonAbilityDetail) then) =
      _$PokemonAbilityDetailCopyWithImpl<$Res, PokemonAbilityDetail>;
  @useResult
  $Res call({String name, String? url});
}

/// @nodoc
class _$PokemonAbilityDetailCopyWithImpl<$Res,
        $Val extends PokemonAbilityDetail>
    implements $PokemonAbilityDetailCopyWith<$Res> {
  _$PokemonAbilityDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonAbilityDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonAbilityDetailImplCopyWith<$Res>
    implements $PokemonAbilityDetailCopyWith<$Res> {
  factory _$$PokemonAbilityDetailImplCopyWith(_$PokemonAbilityDetailImpl value,
          $Res Function(_$PokemonAbilityDetailImpl) then) =
      __$$PokemonAbilityDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? url});
}

/// @nodoc
class __$$PokemonAbilityDetailImplCopyWithImpl<$Res>
    extends _$PokemonAbilityDetailCopyWithImpl<$Res, _$PokemonAbilityDetailImpl>
    implements _$$PokemonAbilityDetailImplCopyWith<$Res> {
  __$$PokemonAbilityDetailImplCopyWithImpl(_$PokemonAbilityDetailImpl _value,
      $Res Function(_$PokemonAbilityDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonAbilityDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = freezed,
  }) {
    return _then(_$PokemonAbilityDetailImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonAbilityDetailImpl implements _PokemonAbilityDetail {
  const _$PokemonAbilityDetailImpl({this.name = "", this.url = null});

  factory _$PokemonAbilityDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonAbilityDetailImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String? url;

  @override
  String toString() {
    return 'PokemonAbilityDetail(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonAbilityDetailImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of PokemonAbilityDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonAbilityDetailImplCopyWith<_$PokemonAbilityDetailImpl>
      get copyWith =>
          __$$PokemonAbilityDetailImplCopyWithImpl<_$PokemonAbilityDetailImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonAbilityDetailImplToJson(
      this,
    );
  }
}

abstract class _PokemonAbilityDetail implements PokemonAbilityDetail {
  const factory _PokemonAbilityDetail({final String name, final String? url}) =
      _$PokemonAbilityDetailImpl;

  factory _PokemonAbilityDetail.fromJson(Map<String, dynamic> json) =
      _$PokemonAbilityDetailImpl.fromJson;

  @override
  String get name;
  @override
  String? get url;

  /// Create a copy of PokemonAbilityDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonAbilityDetailImplCopyWith<_$PokemonAbilityDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}
