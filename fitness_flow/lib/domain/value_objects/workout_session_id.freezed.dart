// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_session_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkoutSessionId implements DiagnosticableTreeMixin {
  String get value;

  /// Create a copy of WorkoutSessionId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WorkoutSessionIdCopyWith<WorkoutSessionId> get copyWith =>
      _$WorkoutSessionIdCopyWithImpl<WorkoutSessionId>(
          this as WorkoutSessionId, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutSessionId'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WorkoutSessionId &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutSessionId(value: $value)';
  }
}

/// @nodoc
abstract mixin class $WorkoutSessionIdCopyWith<$Res> {
  factory $WorkoutSessionIdCopyWith(
          WorkoutSessionId value, $Res Function(WorkoutSessionId) _then) =
      _$WorkoutSessionIdCopyWithImpl;

  @useResult
  $Res call({String value});
}

/// @nodoc
class _$WorkoutSessionIdCopyWithImpl<$Res>
    implements $WorkoutSessionIdCopyWith<$Res> {
  _$WorkoutSessionIdCopyWithImpl(this._self, this._then);

  final WorkoutSessionId _self;
  final $Res Function(WorkoutSessionId) _then;

  /// Create a copy of WorkoutSessionId
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

class _WorkoutSessionId extends WorkoutSessionId with DiagnosticableTreeMixin {
  const _WorkoutSessionId(this.value) : super._();

  @override
  final String value;

  /// Create a copy of WorkoutSessionId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WorkoutSessionIdCopyWith<_WorkoutSessionId> get copyWith =>
      __$WorkoutSessionIdCopyWithImpl<_WorkoutSessionId>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutSessionId'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkoutSessionId &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutSessionId(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$WorkoutSessionIdCopyWith<$Res>
    implements $WorkoutSessionIdCopyWith<$Res> {
  factory _$WorkoutSessionIdCopyWith(
          _WorkoutSessionId value, $Res Function(_WorkoutSessionId) _then) =
      __$WorkoutSessionIdCopyWithImpl;

  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$WorkoutSessionIdCopyWithImpl<$Res>
    implements _$WorkoutSessionIdCopyWith<$Res> {
  __$WorkoutSessionIdCopyWithImpl(this._self, this._then);

  final _WorkoutSessionId _self;
  final $Res Function(_WorkoutSessionId) _then;

  /// Create a copy of WorkoutSessionId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_WorkoutSessionId(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
