// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokedex_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokedexLoading {}

/// @nodoc
abstract class $PokedexLoadingCopyWith<$Res> {
  factory $PokedexLoadingCopyWith(
          PokedexLoading value, $Res Function(PokedexLoading) then) =
      _$PokedexLoadingCopyWithImpl<$Res, PokedexLoading>;
}

/// @nodoc
class _$PokedexLoadingCopyWithImpl<$Res, $Val extends PokedexLoading>
    implements $PokedexLoadingCopyWith<$Res> {
  _$PokedexLoadingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokedexLoading
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PokedexLoadingImplCopyWith<$Res> {
  factory _$$PokedexLoadingImplCopyWith(_$PokedexLoadingImpl value,
          $Res Function(_$PokedexLoadingImpl) then) =
      __$$PokedexLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PokedexLoadingImplCopyWithImpl<$Res>
    extends _$PokedexLoadingCopyWithImpl<$Res, _$PokedexLoadingImpl>
    implements _$$PokedexLoadingImplCopyWith<$Res> {
  __$$PokedexLoadingImplCopyWithImpl(
      _$PokedexLoadingImpl _value, $Res Function(_$PokedexLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokedexLoading
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PokedexLoadingImpl implements _PokedexLoading {
  const _$PokedexLoadingImpl();

  @override
  String toString() {
    return 'PokedexLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PokedexLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _PokedexLoading implements PokedexLoading {
  const factory _PokedexLoading() = _$PokedexLoadingImpl;
}

/// @nodoc
mixin _$PokedexLoaded {
  List<PokemonDetail> get pokemons => throw _privateConstructorUsedError;

  /// Create a copy of PokedexLoaded
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokedexLoadedCopyWith<PokedexLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokedexLoadedCopyWith<$Res> {
  factory $PokedexLoadedCopyWith(
          PokedexLoaded value, $Res Function(PokedexLoaded) then) =
      _$PokedexLoadedCopyWithImpl<$Res, PokedexLoaded>;
  @useResult
  $Res call({List<PokemonDetail> pokemons});
}

/// @nodoc
class _$PokedexLoadedCopyWithImpl<$Res, $Val extends PokedexLoaded>
    implements $PokedexLoadedCopyWith<$Res> {
  _$PokedexLoadedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokedexLoaded
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemons = null,
  }) {
    return _then(_value.copyWith(
      pokemons: null == pokemons
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonDetail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokedexLoadedImplCopyWith<$Res>
    implements $PokedexLoadedCopyWith<$Res> {
  factory _$$PokedexLoadedImplCopyWith(
          _$PokedexLoadedImpl value, $Res Function(_$PokedexLoadedImpl) then) =
      __$$PokedexLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PokemonDetail> pokemons});
}

/// @nodoc
class __$$PokedexLoadedImplCopyWithImpl<$Res>
    extends _$PokedexLoadedCopyWithImpl<$Res, _$PokedexLoadedImpl>
    implements _$$PokedexLoadedImplCopyWith<$Res> {
  __$$PokedexLoadedImplCopyWithImpl(
      _$PokedexLoadedImpl _value, $Res Function(_$PokedexLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokedexLoaded
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemons = null,
  }) {
    return _then(_$PokedexLoadedImpl(
      pokemons: null == pokemons
          ? _value._pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonDetail>,
    ));
  }
}

/// @nodoc

class _$PokedexLoadedImpl implements _PokedexLoaded {
  const _$PokedexLoadedImpl({final List<PokemonDetail> pokemons = const []})
      : _pokemons = pokemons;

  final List<PokemonDetail> _pokemons;
  @override
  @JsonKey()
  List<PokemonDetail> get pokemons {
    if (_pokemons is EqualUnmodifiableListView) return _pokemons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemons);
  }

  @override
  String toString() {
    return 'PokedexLoaded(pokemons: $pokemons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokedexLoadedImpl &&
            const DeepCollectionEquality().equals(other._pokemons, _pokemons));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pokemons));

  /// Create a copy of PokedexLoaded
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokedexLoadedImplCopyWith<_$PokedexLoadedImpl> get copyWith =>
      __$$PokedexLoadedImplCopyWithImpl<_$PokedexLoadedImpl>(this, _$identity);
}

abstract class _PokedexLoaded implements PokedexLoaded {
  const factory _PokedexLoaded({final List<PokemonDetail> pokemons}) =
      _$PokedexLoadedImpl;

  @override
  List<PokemonDetail> get pokemons;

  /// Create a copy of PokedexLoaded
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokedexLoadedImplCopyWith<_$PokedexLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
