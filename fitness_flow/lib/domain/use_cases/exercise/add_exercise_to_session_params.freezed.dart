// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_exercise_to_session_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddExerciseToSessionParams {
  RoutineId get routineId;
  SessionId get sessionId;
  AddExerciseParams get exerciseParams;

  /// Create a copy of AddExerciseToSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddExerciseToSessionParamsCopyWith<AddExerciseToSessionParams>
      get copyWith =>
          _$AddExerciseToSessionParamsCopyWithImpl<AddExerciseToSessionParams>(
              this as AddExerciseToSessionParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddExerciseToSessionParams &&
            (identical(other.routineId, routineId) ||
                other.routineId == routineId) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.exerciseParams, exerciseParams) ||
                other.exerciseParams == exerciseParams));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, routineId, sessionId, exerciseParams);

  @override
  String toString() {
    return 'AddExerciseToSessionParams(routineId: $routineId, sessionId: $sessionId, exerciseParams: $exerciseParams)';
  }
}

/// @nodoc
abstract mixin class $AddExerciseToSessionParamsCopyWith<$Res> {
  factory $AddExerciseToSessionParamsCopyWith(AddExerciseToSessionParams value,
          $Res Function(AddExerciseToSessionParams) _then) =
      _$AddExerciseToSessionParamsCopyWithImpl;
  @useResult
  $Res call(
      {RoutineId routineId,
      SessionId sessionId,
      AddExerciseParams exerciseParams});

  $RoutineIdCopyWith<$Res> get routineId;
  $SessionIdCopyWith<$Res> get sessionId;
  $AddExerciseParamsCopyWith<$Res> get exerciseParams;
}

/// @nodoc
class _$AddExerciseToSessionParamsCopyWithImpl<$Res>
    implements $AddExerciseToSessionParamsCopyWith<$Res> {
  _$AddExerciseToSessionParamsCopyWithImpl(this._self, this._then);

  final AddExerciseToSessionParams _self;
  final $Res Function(AddExerciseToSessionParams) _then;

  /// Create a copy of AddExerciseToSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routineId = null,
    Object? sessionId = null,
    Object? exerciseParams = null,
  }) {
    return _then(_self.copyWith(
      routineId: null == routineId
          ? _self.routineId
          : routineId // ignore: cast_nullable_to_non_nullable
              as RoutineId,
      sessionId: null == sessionId
          ? _self.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as SessionId,
      exerciseParams: null == exerciseParams
          ? _self.exerciseParams
          : exerciseParams // ignore: cast_nullable_to_non_nullable
              as AddExerciseParams,
    ));
  }

  /// Create a copy of AddExerciseToSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoutineIdCopyWith<$Res> get routineId {
    return $RoutineIdCopyWith<$Res>(_self.routineId, (value) {
      return _then(_self.copyWith(routineId: value));
    });
  }

  /// Create a copy of AddExerciseToSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionIdCopyWith<$Res> get sessionId {
    return $SessionIdCopyWith<$Res>(_self.sessionId, (value) {
      return _then(_self.copyWith(sessionId: value));
    });
  }

  /// Create a copy of AddExerciseToSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddExerciseParamsCopyWith<$Res> get exerciseParams {
    return $AddExerciseParamsCopyWith<$Res>(_self.exerciseParams, (value) {
      return _then(_self.copyWith(exerciseParams: value));
    });
  }
}

/// @nodoc

class _AddExerciseToSessionParams implements AddExerciseToSessionParams {
  const _AddExerciseToSessionParams(
      {required this.routineId,
      required this.sessionId,
      required this.exerciseParams});

  @override
  final RoutineId routineId;
  @override
  final SessionId sessionId;
  @override
  final AddExerciseParams exerciseParams;

  /// Create a copy of AddExerciseToSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddExerciseToSessionParamsCopyWith<_AddExerciseToSessionParams>
      get copyWith => __$AddExerciseToSessionParamsCopyWithImpl<
          _AddExerciseToSessionParams>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddExerciseToSessionParams &&
            (identical(other.routineId, routineId) ||
                other.routineId == routineId) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.exerciseParams, exerciseParams) ||
                other.exerciseParams == exerciseParams));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, routineId, sessionId, exerciseParams);

  @override
  String toString() {
    return 'AddExerciseToSessionParams(routineId: $routineId, sessionId: $sessionId, exerciseParams: $exerciseParams)';
  }
}

/// @nodoc
abstract mixin class _$AddExerciseToSessionParamsCopyWith<$Res>
    implements $AddExerciseToSessionParamsCopyWith<$Res> {
  factory _$AddExerciseToSessionParamsCopyWith(
          _AddExerciseToSessionParams value,
          $Res Function(_AddExerciseToSessionParams) _then) =
      __$AddExerciseToSessionParamsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {RoutineId routineId,
      SessionId sessionId,
      AddExerciseParams exerciseParams});

  @override
  $RoutineIdCopyWith<$Res> get routineId;
  @override
  $SessionIdCopyWith<$Res> get sessionId;
  @override
  $AddExerciseParamsCopyWith<$Res> get exerciseParams;
}

/// @nodoc
class __$AddExerciseToSessionParamsCopyWithImpl<$Res>
    implements _$AddExerciseToSessionParamsCopyWith<$Res> {
  __$AddExerciseToSessionParamsCopyWithImpl(this._self, this._then);

  final _AddExerciseToSessionParams _self;
  final $Res Function(_AddExerciseToSessionParams) _then;

  /// Create a copy of AddExerciseToSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? routineId = null,
    Object? sessionId = null,
    Object? exerciseParams = null,
  }) {
    return _then(_AddExerciseToSessionParams(
      routineId: null == routineId
          ? _self.routineId
          : routineId // ignore: cast_nullable_to_non_nullable
              as RoutineId,
      sessionId: null == sessionId
          ? _self.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as SessionId,
      exerciseParams: null == exerciseParams
          ? _self.exerciseParams
          : exerciseParams // ignore: cast_nullable_to_non_nullable
              as AddExerciseParams,
    ));
  }

  /// Create a copy of AddExerciseToSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoutineIdCopyWith<$Res> get routineId {
    return $RoutineIdCopyWith<$Res>(_self.routineId, (value) {
      return _then(_self.copyWith(routineId: value));
    });
  }

  /// Create a copy of AddExerciseToSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionIdCopyWith<$Res> get sessionId {
    return $SessionIdCopyWith<$Res>(_self.sessionId, (value) {
      return _then(_self.copyWith(sessionId: value));
    });
  }

  /// Create a copy of AddExerciseToSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddExerciseParamsCopyWith<$Res> get exerciseParams {
    return $AddExerciseParamsCopyWith<$Res>(_self.exerciseParams, (value) {
      return _then(_self.copyWith(exerciseParams: value));
    });
  }
}

// dart format on
