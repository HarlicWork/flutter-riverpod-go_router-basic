import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_states.freezed.dart';
part 'login_states.g.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState.initial() = _LoginStateInitial;
  factory LoginState.loading() = _LoginStateLoading;
  factory LoginState.success() = _LoginStateSuccess;
  factory LoginState.error(String errorMessage) = _LoginStateError;

  factory LoginState.fromJson(Map<String, dynamic> json) =>
      _$LoginStateFromJson(json);
}
