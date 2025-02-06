import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_page_state.freezed.dart';

sealed class LoginPageState {}

@freezed
class UncertifiedState extends LoginPageState with _$UncertifiedState {
  const factory UncertifiedState({
    @Default('') String mailAddress,
    @Default('') String password,
  }) = _UncertifiedState;
}