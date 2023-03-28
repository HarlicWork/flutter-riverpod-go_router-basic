import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_state.freezed.dart';
part 'user_state.g.dart';

@freezed
class UserState with _$UserState {
  factory UserState.initial() = _UserStateInitial;
  factory UserState.loading() = _UserStateLoading;
  factory UserState.success() = _UserStateSuccess;
  factory UserState.error(String errorMessage) = _UserStateError;

  factory UserState.fromJson(Map<String, dynamic> json) =>
      _$UserStateFromJson(json);
}
