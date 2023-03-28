// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_states.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginStateInitial _$$_LoginStateInitialFromJson(Map<String, dynamic> json) =>
    _$_LoginStateInitial(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_LoginStateInitialToJson(
        _$_LoginStateInitial instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_LoginStateLoading _$$_LoginStateLoadingFromJson(Map<String, dynamic> json) =>
    _$_LoginStateLoading(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_LoginStateLoadingToJson(
        _$_LoginStateLoading instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_LoginStateSuccess _$$_LoginStateSuccessFromJson(Map<String, dynamic> json) =>
    _$_LoginStateSuccess(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_LoginStateSuccessToJson(
        _$_LoginStateSuccess instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_LoginStateError _$$_LoginStateErrorFromJson(Map<String, dynamic> json) =>
    _$_LoginStateError(
      json['errorMessage'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_LoginStateErrorToJson(_$_LoginStateError instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
      'runtimeType': instance.$type,
    };
