// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonStats _$PokemonStatsFromJson(Map<String, dynamic> json) {
  return _PokemonStats.fromJson(json);
}

/// @nodoc
mixin _$PokemonStats {
// 種族値
  @JsonKey(name: 'base_stat')
  int get baseStat => throw _privateConstructorUsedError; // 努力値
  int get effort => throw _privateConstructorUsedError; // 種族値詳細情報
  PokemonStatsDetail get stat => throw _privateConstructorUsedError;

  /// Serializes this PokemonStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonStatsCopyWith<PokemonStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStatsCopyWith<$Res> {
  factory $PokemonStatsCopyWith(
          PokemonStats value, $Res Function(PokemonStats) then) =
      _$PokemonStatsCopyWithImpl<$Res, PokemonStats>;
  @useResult
  $Res call(
      {@JsonKey(name: 'base_stat') int baseStat,
      int effort,
      PokemonStatsDetail stat});

  $PokemonStatsDetailCopyWith<$Res> get stat;
}

/// @nodoc
class _$PokemonStatsCopyWithImpl<$Res, $Val extends PokemonStats>
    implements $PokemonStatsCopyWith<$Res> {
  _$PokemonStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? effort = null,
    Object? stat = null,
  }) {
    return _then(_value.copyWith(
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      effort: null == effort
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as PokemonStatsDetail,
    ) as $Val);
  }

  /// Create a copy of PokemonStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonStatsDetailCopyWith<$Res> get stat {
    return $PokemonStatsDetailCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonStatsImplCopyWith<$Res>
    implements $PokemonStatsCopyWith<$Res> {
  factory _$$PokemonStatsImplCopyWith(
          _$PokemonStatsImpl value, $Res Function(_$PokemonStatsImpl) then) =
      __$$PokemonStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'base_stat') int baseStat,
      int effort,
      PokemonStatsDetail stat});

  @override
  $PokemonStatsDetailCopyWith<$Res> get stat;
}

/// @nodoc
class __$$PokemonStatsImplCopyWithImpl<$Res>
    extends _$PokemonStatsCopyWithImpl<$Res, _$PokemonStatsImpl>
    implements _$$PokemonStatsImplCopyWith<$Res> {
  __$$PokemonStatsImplCopyWithImpl(
      _$PokemonStatsImpl _value, $Res Function(_$PokemonStatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? effort = null,
    Object? stat = null,
  }) {
    return _then(_$PokemonStatsImpl(
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      effort: null == effort
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as PokemonStatsDetail,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonStatsImpl implements _PokemonStats {
  const _$PokemonStatsImpl(
      {@JsonKey(name: 'base_stat') required this.baseStat,
      required this.effort,
      required this.stat});

  factory _$PokemonStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonStatsImplFromJson(json);

// 種族値
  @override
  @JsonKey(name: 'base_stat')
  final int baseStat;
// 努力値
  @override
  final int effort;
// 種族値詳細情報
  @override
  final PokemonStatsDetail stat;

  @override
  String toString() {
    return 'PokemonStats(baseStat: $baseStat, effort: $effort, stat: $stat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonStatsImpl &&
            (identical(other.baseStat, baseStat) ||
                other.baseStat == baseStat) &&
            (identical(other.effort, effort) || other.effort == effort) &&
            (identical(other.stat, stat) || other.stat == stat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, baseStat, effort, stat);

  /// Create a copy of PokemonStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonStatsImplCopyWith<_$PokemonStatsImpl> get copyWith =>
      __$$PokemonStatsImplCopyWithImpl<_$PokemonStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonStatsImplToJson(
      this,
    );
  }
}

abstract class _PokemonStats implements PokemonStats {
  const factory _PokemonStats(
      {@JsonKey(name: 'base_stat') required final int baseStat,
      required final int effort,
      required final PokemonStatsDetail stat}) = _$PokemonStatsImpl;

  factory _PokemonStats.fromJson(Map<String, dynamic> json) =
      _$PokemonStatsImpl.fromJson;

// 種族値
  @override
  @JsonKey(name: 'base_stat')
  int get baseStat; // 努力値
  @override
  int get effort; // 種族値詳細情報
  @override
  PokemonStatsDetail get stat;

  /// Create a copy of PokemonStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonStatsImplCopyWith<_$PokemonStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
