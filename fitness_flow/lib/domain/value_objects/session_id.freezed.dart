// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SessionId implements DiagnosticableTreeMixin {
  String get value;

  /// Create a copy of SessionId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SessionIdCopyWith<SessionId> get copyWith =>
      _$SessionIdCopyWithImpl<SessionId>(this as SessionId, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SessionId'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SessionId &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SessionId(value: $value)';
  }
}

/// @nodoc
abstract mixin class $SessionIdCopyWith<$Res> {
  factory $SessionIdCopyWith(SessionId value, $Res Function(SessionId) _then) =
      _$SessionIdCopyWithImpl;

  @useResult
  $Res call({String value});
}

/// @nodoc
class _$SessionIdCopyWithImpl<$Res> implements $SessionIdCopyWith<$Res> {
  _$SessionIdCopyWithImpl(this._self, this._then);

  final SessionId _self;
  final $Res Function(SessionId) _then;

  /// Create a copy of SessionId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_self.copyWith(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _SessionId extends SessionId with DiagnosticableTreeMixin {
  const _SessionId(this.value) : super._();

  @override
  final String value;

  /// Create a copy of SessionId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SessionIdCopyWith<_SessionId> get copyWith =>
      __$SessionIdCopyWithImpl<_SessionId>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'SessionId'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SessionId &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SessionId(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$SessionIdCopyWith<$Res>
    implements $SessionIdCopyWith<$Res> {
  factory _$SessionIdCopyWith(
          _SessionId value, $Res Function(_SessionId) _then) =
      __$SessionIdCopyWithImpl;

  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$SessionIdCopyWithImpl<$Res> implements _$SessionIdCopyWith<$Res> {
  __$SessionIdCopyWithImpl(this._self, this._then);

  final _SessionId _self;
  final $Res Function(_SessionId) _then;

  /// Create a copy of SessionId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_SessionId(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
