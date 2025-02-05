import 'package:freezed_annotation/freezed_annotation.dart';

part 'uncertified_state.freezed.dart';

part 'login_page_state.dart';

@freezed
class UncertifiedState extends LoginPageState with _$UncertifiedState {
  const factory UncertifiedState({
    @Default('') String mailAddress,
    @Default('') String password,
  }) = _UncertifiedState;
}
