// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_sequence_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonSequenceResult {
// ポケモン詳細情報リスト
  List<PokemonDetail> get pokemons => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;

  /// Create a copy of PokemonSequenceResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonSequenceResultCopyWith<PokemonSequenceResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSequenceResultCopyWith<$Res> {
  factory $PokemonSequenceResultCopyWith(PokemonSequenceResult value,
          $Res Function(PokemonSequenceResult) then) =
      _$PokemonSequenceResultCopyWithImpl<$Res, PokemonSequenceResult>;
  @useResult
  $Res call({List<PokemonDetail> pokemons, String? previous, String? next});
}

/// @nodoc
class _$PokemonSequenceResultCopyWithImpl<$Res,
        $Val extends PokemonSequenceResult>
    implements $PokemonSequenceResultCopyWith<$Res> {
  _$PokemonSequenceResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonSequenceResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemons = null,
    Object? previous = freezed,
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      pokemons: null == pokemons
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonDetail>,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonSequenceResultImplCopyWith<$Res>
    implements $PokemonSequenceResultCopyWith<$Res> {
  factory _$$PokemonSequenceResultImplCopyWith(
          _$PokemonSequenceResultImpl value,
          $Res Function(_$PokemonSequenceResultImpl) then) =
      __$$PokemonSequenceResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PokemonDetail> pokemons, String? previous, String? next});
}

/// @nodoc
class __$$PokemonSequenceResultImplCopyWithImpl<$Res>
    extends _$PokemonSequenceResultCopyWithImpl<$Res,
        _$PokemonSequenceResultImpl>
    implements _$$PokemonSequenceResultImplCopyWith<$Res> {
  __$$PokemonSequenceResultImplCopyWithImpl(_$PokemonSequenceResultImpl _value,
      $Res Function(_$PokemonSequenceResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonSequenceResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemons = null,
    Object? previous = freezed,
    Object? next = freezed,
  }) {
    return _then(_$PokemonSequenceResultImpl(
      pokemons: null == pokemons
          ? _value._pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<PokemonDetail>,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PokemonSequenceResultImpl implements _PokemonSequenceResult {
  const _$PokemonSequenceResultImpl(
      {final List<PokemonDetail> pokemons = const [],
      this.previous = null,
      this.next = null})
      : _pokemons = pokemons;

// ポケモン詳細情報リスト
  final List<PokemonDetail> _pokemons;
// ポケモン詳細情報リスト
  @override
  @JsonKey()
  List<PokemonDetail> get pokemons {
    if (_pokemons is EqualUnmodifiableListView) return _pokemons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemons);
  }

  @override
  @JsonKey()
  final String? previous;
  @override
  @JsonKey()
  final String? next;

  @override
  String toString() {
    return 'PokemonSequenceResult(pokemons: $pokemons, previous: $previous, next: $next)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSequenceResultImpl &&
            const DeepCollectionEquality().equals(other._pokemons, _pokemons) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            (identical(other.next, next) || other.next == next));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_pokemons), previous, next);

  /// Create a copy of PokemonSequenceResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSequenceResultImplCopyWith<_$PokemonSequenceResultImpl>
      get copyWith => __$$PokemonSequenceResultImplCopyWithImpl<
          _$PokemonSequenceResultImpl>(this, _$identity);
}

abstract class _PokemonSequenceResult implements PokemonSequenceResult {
  const factory _PokemonSequenceResult(
      {final List<PokemonDetail> pokemons,
      final String? previous,
      final String? next}) = _$PokemonSequenceResultImpl;

// ポケモン詳細情報リスト
  @override
  List<PokemonDetail> get pokemons;
  @override
  String? get previous;
  @override
  String? get next;

  /// Create a copy of PokemonSequenceResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonSequenceResultImplCopyWith<_$PokemonSequenceResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
