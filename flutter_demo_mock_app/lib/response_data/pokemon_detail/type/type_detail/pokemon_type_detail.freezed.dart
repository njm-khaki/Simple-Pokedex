// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_type_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonTypeDetail _$PokemonTypeDetailFromJson(Map<String, dynamic> json) {
  return _PokemonTypeDetail.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypeDetail {
// タイプ名
  String get name => throw _privateConstructorUsedError; // タイプ情報詳細URL
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this PokemonTypeDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonTypeDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonTypeDetailCopyWith<PokemonTypeDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeDetailCopyWith<$Res> {
  factory $PokemonTypeDetailCopyWith(
          PokemonTypeDetail value, $Res Function(PokemonTypeDetail) then) =
      _$PokemonTypeDetailCopyWithImpl<$Res, PokemonTypeDetail>;
  @useResult
  $Res call({String name, String? url});
}

/// @nodoc
class _$PokemonTypeDetailCopyWithImpl<$Res, $Val extends PokemonTypeDetail>
    implements $PokemonTypeDetailCopyWith<$Res> {
  _$PokemonTypeDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonTypeDetail
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
abstract class _$$PokemonTypeDetailImplCopyWith<$Res>
    implements $PokemonTypeDetailCopyWith<$Res> {
  factory _$$PokemonTypeDetailImplCopyWith(_$PokemonTypeDetailImpl value,
          $Res Function(_$PokemonTypeDetailImpl) then) =
      __$$PokemonTypeDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? url});
}

/// @nodoc
class __$$PokemonTypeDetailImplCopyWithImpl<$Res>
    extends _$PokemonTypeDetailCopyWithImpl<$Res, _$PokemonTypeDetailImpl>
    implements _$$PokemonTypeDetailImplCopyWith<$Res> {
  __$$PokemonTypeDetailImplCopyWithImpl(_$PokemonTypeDetailImpl _value,
      $Res Function(_$PokemonTypeDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonTypeDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = freezed,
  }) {
    return _then(_$PokemonTypeDetailImpl(
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
class _$PokemonTypeDetailImpl implements _PokemonTypeDetail {
  const _$PokemonTypeDetailImpl({this.name = "", this.url = null});

  factory _$PokemonTypeDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTypeDetailImplFromJson(json);

// タイプ名
  @override
  @JsonKey()
  final String name;
// タイプ情報詳細URL
  @override
  @JsonKey()
  final String? url;

  @override
  String toString() {
    return 'PokemonTypeDetail(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypeDetailImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of PokemonTypeDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypeDetailImplCopyWith<_$PokemonTypeDetailImpl> get copyWith =>
      __$$PokemonTypeDetailImplCopyWithImpl<_$PokemonTypeDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTypeDetailImplToJson(
      this,
    );
  }
}

abstract class _PokemonTypeDetail implements PokemonTypeDetail {
  const factory _PokemonTypeDetail({final String name, final String? url}) =
      _$PokemonTypeDetailImpl;

  factory _PokemonTypeDetail.fromJson(Map<String, dynamic> json) =
      _$PokemonTypeDetailImpl.fromJson;

// タイプ名
  @override
  String get name; // タイプ情報詳細URL
  @override
  String? get url;

  /// Create a copy of PokemonTypeDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonTypeDetailImplCopyWith<_$PokemonTypeDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
