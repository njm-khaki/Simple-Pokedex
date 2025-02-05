// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uncertified_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UncertifiedState {
  String get mailAddress => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Create a copy of UncertifiedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UncertifiedStateCopyWith<UncertifiedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UncertifiedStateCopyWith<$Res> {
  factory $UncertifiedStateCopyWith(
          UncertifiedState value, $Res Function(UncertifiedState) then) =
      _$UncertifiedStateCopyWithImpl<$Res, UncertifiedState>;
  @useResult
  $Res call({String mailAddress, String password});
}

/// @nodoc
class _$UncertifiedStateCopyWithImpl<$Res, $Val extends UncertifiedState>
    implements $UncertifiedStateCopyWith<$Res> {
  _$UncertifiedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UncertifiedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mailAddress = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      mailAddress: null == mailAddress
          ? _value.mailAddress
          : mailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UncertifiedStateImplCopyWith<$Res>
    implements $UncertifiedStateCopyWith<$Res> {
  factory _$$UncertifiedStateImplCopyWith(_$UncertifiedStateImpl value,
          $Res Function(_$UncertifiedStateImpl) then) =
      __$$UncertifiedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String mailAddress, String password});
}

/// @nodoc
class __$$UncertifiedStateImplCopyWithImpl<$Res>
    extends _$UncertifiedStateCopyWithImpl<$Res, _$UncertifiedStateImpl>
    implements _$$UncertifiedStateImplCopyWith<$Res> {
  __$$UncertifiedStateImplCopyWithImpl(_$UncertifiedStateImpl _value,
      $Res Function(_$UncertifiedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UncertifiedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mailAddress = null,
    Object? password = null,
  }) {
    return _then(_$UncertifiedStateImpl(
      mailAddress: null == mailAddress
          ? _value.mailAddress
          : mailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UncertifiedStateImpl implements _UncertifiedState {
  const _$UncertifiedStateImpl({this.mailAddress = '', this.password = ''});

  @override
  @JsonKey()
  final String mailAddress;
  @override
  @JsonKey()
  final String password;

  @override
  String toString() {
    return 'UncertifiedState(mailAddress: $mailAddress, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UncertifiedStateImpl &&
            (identical(other.mailAddress, mailAddress) ||
                other.mailAddress == mailAddress) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mailAddress, password);

  /// Create a copy of UncertifiedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UncertifiedStateImplCopyWith<_$UncertifiedStateImpl> get copyWith =>
      __$$UncertifiedStateImplCopyWithImpl<_$UncertifiedStateImpl>(
          this, _$identity);
}

abstract class _UncertifiedState implements UncertifiedState {
  const factory _UncertifiedState(
      {final String mailAddress,
      final String password}) = _$UncertifiedStateImpl;

  @override
  String get mailAddress;
  @override
  String get password;

  /// Create a copy of UncertifiedState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UncertifiedStateImplCopyWith<_$UncertifiedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
