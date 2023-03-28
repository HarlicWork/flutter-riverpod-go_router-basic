// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginState _$LoginStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return _LoginStateInitial.fromJson(json);
    case 'loading':
      return _LoginStateLoading.fromJson(json);
    case 'success':
      return _LoginStateSuccess.fromJson(json);
    case 'error':
      return _LoginStateError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'LoginState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoading value) loading,
    required TResult Function(_LoginStateSuccess value) success,
    required TResult Function(_LoginStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginStateInitial value)? initial,
    TResult? Function(_LoginStateLoading value)? loading,
    TResult? Function(_LoginStateSuccess value)? success,
    TResult? Function(_LoginStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateSuccess value)? success,
    TResult Function(_LoginStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoginStateInitialCopyWith<$Res> {
  factory _$$_LoginStateInitialCopyWith(_$_LoginStateInitial value,
          $Res Function(_$_LoginStateInitial) then) =
      __$$_LoginStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginStateInitialCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginStateInitial>
    implements _$$_LoginStateInitialCopyWith<$Res> {
  __$$_LoginStateInitialCopyWithImpl(
      _$_LoginStateInitial _value, $Res Function(_$_LoginStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_LoginStateInitial implements _LoginStateInitial {
  _$_LoginStateInitial({final String? $type}) : $type = $type ?? 'initial';

  factory _$_LoginStateInitial.fromJson(Map<String, dynamic> json) =>
      _$$_LoginStateInitialFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginStateInitial);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoading value) loading,
    required TResult Function(_LoginStateSuccess value) success,
    required TResult Function(_LoginStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginStateInitial value)? initial,
    TResult? Function(_LoginStateLoading value)? loading,
    TResult? Function(_LoginStateSuccess value)? success,
    TResult? Function(_LoginStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateSuccess value)? success,
    TResult Function(_LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginStateInitialToJson(
      this,
    );
  }
}

abstract class _LoginStateInitial implements LoginState {
  factory _LoginStateInitial() = _$_LoginStateInitial;

  factory _LoginStateInitial.fromJson(Map<String, dynamic> json) =
      _$_LoginStateInitial.fromJson;
}

/// @nodoc
abstract class _$$_LoginStateLoadingCopyWith<$Res> {
  factory _$$_LoginStateLoadingCopyWith(_$_LoginStateLoading value,
          $Res Function(_$_LoginStateLoading) then) =
      __$$_LoginStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginStateLoadingCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginStateLoading>
    implements _$$_LoginStateLoadingCopyWith<$Res> {
  __$$_LoginStateLoadingCopyWithImpl(
      _$_LoginStateLoading _value, $Res Function(_$_LoginStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_LoginStateLoading implements _LoginStateLoading {
  _$_LoginStateLoading({final String? $type}) : $type = $type ?? 'loading';

  factory _$_LoginStateLoading.fromJson(Map<String, dynamic> json) =>
      _$$_LoginStateLoadingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginStateLoading);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoading value) loading,
    required TResult Function(_LoginStateSuccess value) success,
    required TResult Function(_LoginStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginStateInitial value)? initial,
    TResult? Function(_LoginStateLoading value)? loading,
    TResult? Function(_LoginStateSuccess value)? success,
    TResult? Function(_LoginStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateSuccess value)? success,
    TResult Function(_LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginStateLoadingToJson(
      this,
    );
  }
}

abstract class _LoginStateLoading implements LoginState {
  factory _LoginStateLoading() = _$_LoginStateLoading;

  factory _LoginStateLoading.fromJson(Map<String, dynamic> json) =
      _$_LoginStateLoading.fromJson;
}

/// @nodoc
abstract class _$$_LoginStateSuccessCopyWith<$Res> {
  factory _$$_LoginStateSuccessCopyWith(_$_LoginStateSuccess value,
          $Res Function(_$_LoginStateSuccess) then) =
      __$$_LoginStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginStateSuccessCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginStateSuccess>
    implements _$$_LoginStateSuccessCopyWith<$Res> {
  __$$_LoginStateSuccessCopyWithImpl(
      _$_LoginStateSuccess _value, $Res Function(_$_LoginStateSuccess) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_LoginStateSuccess implements _LoginStateSuccess {
  _$_LoginStateSuccess({final String? $type}) : $type = $type ?? 'success';

  factory _$_LoginStateSuccess.fromJson(Map<String, dynamic> json) =>
      _$$_LoginStateSuccessFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LoginState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginStateSuccess);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoading value) loading,
    required TResult Function(_LoginStateSuccess value) success,
    required TResult Function(_LoginStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginStateInitial value)? initial,
    TResult? Function(_LoginStateLoading value)? loading,
    TResult? Function(_LoginStateSuccess value)? success,
    TResult? Function(_LoginStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateSuccess value)? success,
    TResult Function(_LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginStateSuccessToJson(
      this,
    );
  }
}

abstract class _LoginStateSuccess implements LoginState {
  factory _LoginStateSuccess() = _$_LoginStateSuccess;

  factory _LoginStateSuccess.fromJson(Map<String, dynamic> json) =
      _$_LoginStateSuccess.fromJson;
}

/// @nodoc
abstract class _$$_LoginStateErrorCopyWith<$Res> {
  factory _$$_LoginStateErrorCopyWith(
          _$_LoginStateError value, $Res Function(_$_LoginStateError) then) =
      __$$_LoginStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_LoginStateErrorCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginStateError>
    implements _$$_LoginStateErrorCopyWith<$Res> {
  __$$_LoginStateErrorCopyWithImpl(
      _$_LoginStateError _value, $Res Function(_$_LoginStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_LoginStateError(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginStateError implements _LoginStateError {
  _$_LoginStateError(this.errorMessage, {final String? $type})
      : $type = $type ?? 'error';

  factory _$_LoginStateError.fromJson(Map<String, dynamic> json) =>
      _$$_LoginStateErrorFromJson(json);

  @override
  final String errorMessage;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LoginState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginStateError &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateErrorCopyWith<_$_LoginStateError> get copyWith =>
      __$$_LoginStateErrorCopyWithImpl<_$_LoginStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginStateInitial value) initial,
    required TResult Function(_LoginStateLoading value) loading,
    required TResult Function(_LoginStateSuccess value) success,
    required TResult Function(_LoginStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginStateInitial value)? initial,
    TResult? Function(_LoginStateLoading value)? loading,
    TResult? Function(_LoginStateSuccess value)? success,
    TResult? Function(_LoginStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStateInitial value)? initial,
    TResult Function(_LoginStateLoading value)? loading,
    TResult Function(_LoginStateSuccess value)? success,
    TResult Function(_LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginStateErrorToJson(
      this,
    );
  }
}

abstract class _LoginStateError implements LoginState {
  factory _LoginStateError(final String errorMessage) = _$_LoginStateError;

  factory _LoginStateError.fromJson(Map<String, dynamic> json) =
      _$_LoginStateError.fromJson;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_LoginStateErrorCopyWith<_$_LoginStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
