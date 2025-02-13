// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_stats_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonStatsDetail _$PokemonStatsDetailFromJson(Map<String, dynamic> json) {
  return _PokemonStatsDetail.fromJson(json);
}

/// @nodoc
mixin _$PokemonStatsDetail {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this PokemonStatsDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonStatsDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonStatsDetailCopyWith<PokemonStatsDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStatsDetailCopyWith<$Res> {
  factory $PokemonStatsDetailCopyWith(
          PokemonStatsDetail value, $Res Function(PokemonStatsDetail) then) =
      _$PokemonStatsDetailCopyWithImpl<$Res, PokemonStatsDetail>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonStatsDetailCopyWithImpl<$Res, $Val extends PokemonStatsDetail>
    implements $PokemonStatsDetailCopyWith<$Res> {
  _$PokemonStatsDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonStatsDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonStatsDetailImplCopyWith<$Res>
    implements $PokemonStatsDetailCopyWith<$Res> {
  factory _$$PokemonStatsDetailImplCopyWith(_$PokemonStatsDetailImpl value,
          $Res Function(_$PokemonStatsDetailImpl) then) =
      __$$PokemonStatsDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$PokemonStatsDetailImplCopyWithImpl<$Res>
    extends _$PokemonStatsDetailCopyWithImpl<$Res, _$PokemonStatsDetailImpl>
    implements _$$PokemonStatsDetailImplCopyWith<$Res> {
  __$$PokemonStatsDetailImplCopyWithImpl(_$PokemonStatsDetailImpl _value,
      $Res Function(_$PokemonStatsDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonStatsDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$PokemonStatsDetailImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonStatsDetailImpl implements _PokemonStatsDetail {
  const _$PokemonStatsDetailImpl({required this.name, required this.url});

  factory _$PokemonStatsDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonStatsDetailImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonStatsDetail(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonStatsDetailImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of PokemonStatsDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonStatsDetailImplCopyWith<_$PokemonStatsDetailImpl> get copyWith =>
      __$$PokemonStatsDetailImplCopyWithImpl<_$PokemonStatsDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonStatsDetailImplToJson(
      this,
    );
  }
}

abstract class _PokemonStatsDetail implements PokemonStatsDetail {
  const factory _PokemonStatsDetail(
      {required final String name,
      required final String url}) = _$PokemonStatsDetailImpl;

  factory _PokemonStatsDetail.fromJson(Map<String, dynamic> json) =
      _$PokemonStatsDetailImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of PokemonStatsDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonStatsDetailImplCopyWith<_$PokemonStatsDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
