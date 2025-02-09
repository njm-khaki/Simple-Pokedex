// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonItem _$PokemonItemFromJson(Map<String, dynamic> json) {
  return _PokemonItem.fromJson(json);
}

/// @nodoc
mixin _$PokemonItem {
// ポケモン名
  String get name => throw _privateConstructorUsedError; // ポケモン情報取得URL
  String get url => throw _privateConstructorUsedError; // ポケモン画像 URL
  String get image => throw _privateConstructorUsedError;

  /// Serializes this PokemonItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonItemCopyWith<PokemonItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonItemCopyWith<$Res> {
  factory $PokemonItemCopyWith(
          PokemonItem value, $Res Function(PokemonItem) then) =
      _$PokemonItemCopyWithImpl<$Res, PokemonItem>;
  @useResult
  $Res call({String name, String url, String image});
}

/// @nodoc
class _$PokemonItemCopyWithImpl<$Res, $Val extends PokemonItem>
    implements $PokemonItemCopyWith<$Res> {
  _$PokemonItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
    Object? image = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonItemImplCopyWith<$Res>
    implements $PokemonItemCopyWith<$Res> {
  factory _$$PokemonItemImplCopyWith(
          _$PokemonItemImpl value, $Res Function(_$PokemonItemImpl) then) =
      __$$PokemonItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url, String image});
}

/// @nodoc
class __$$PokemonItemImplCopyWithImpl<$Res>
    extends _$PokemonItemCopyWithImpl<$Res, _$PokemonItemImpl>
    implements _$$PokemonItemImplCopyWith<$Res> {
  __$$PokemonItemImplCopyWithImpl(
      _$PokemonItemImpl _value, $Res Function(_$PokemonItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
    Object? image = null,
  }) {
    return _then(_$PokemonItemImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonItemImpl implements _PokemonItem {
  const _$PokemonItemImpl({this.name = "", this.url = "", this.image = ""});

  factory _$PokemonItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonItemImplFromJson(json);

// ポケモン名
  @override
  @JsonKey()
  final String name;
// ポケモン情報取得URL
  @override
  @JsonKey()
  final String url;
// ポケモン画像 URL
  @override
  @JsonKey()
  final String image;

  @override
  String toString() {
    return 'PokemonItem(name: $name, url: $url, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonItemImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url, image);

  /// Create a copy of PokemonItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonItemImplCopyWith<_$PokemonItemImpl> get copyWith =>
      __$$PokemonItemImplCopyWithImpl<_$PokemonItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonItemImplToJson(
      this,
    );
  }
}

abstract class _PokemonItem implements PokemonItem {
  const factory _PokemonItem(
      {final String name,
      final String url,
      final String image}) = _$PokemonItemImpl;

  factory _PokemonItem.fromJson(Map<String, dynamic> json) =
      _$PokemonItemImpl.fromJson;

// ポケモン名
  @override
  String get name; // ポケモン情報取得URL
  @override
  String get url; // ポケモン画像 URL
  @override
  String get image;

  /// Create a copy of PokemonItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonItemImplCopyWith<_$PokemonItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
