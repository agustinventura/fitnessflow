// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_exercise_in_session_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateExerciseInSessionParams {
  RoutineId get routineId;
  SessionId get sessionId;
  ExerciseId get exerciseId;
  AddExerciseParams get newExerciseData;

  /// Create a copy of UpdateExerciseInSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateExerciseInSessionParamsCopyWith<UpdateExerciseInSessionParams>
      get copyWith => _$UpdateExerciseInSessionParamsCopyWithImpl<
              UpdateExerciseInSessionParams>(
          this as UpdateExerciseInSessionParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateExerciseInSessionParams &&
            (identical(other.routineId, routineId) ||
                other.routineId == routineId) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.exerciseId, exerciseId) ||
                other.exerciseId == exerciseId) &&
            (identical(other.newExerciseData, newExerciseData) ||
                other.newExerciseData == newExerciseData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, routineId, sessionId, exerciseId, newExerciseData);

  @override
  String toString() {
    return 'UpdateExerciseInSessionParams(routineId: $routineId, sessionId: $sessionId, exerciseId: $exerciseId, newExerciseData: $newExerciseData)';
  }
}

/// @nodoc
abstract mixin class $UpdateExerciseInSessionParamsCopyWith<$Res> {
  factory $UpdateExerciseInSessionParamsCopyWith(
          UpdateExerciseInSessionParams value,
          $Res Function(UpdateExerciseInSessionParams) _then) =
      _$UpdateExerciseInSessionParamsCopyWithImpl;
  @useResult
  $Res call(
      {RoutineId routineId,
      SessionId sessionId,
      ExerciseId exerciseId,
      AddExerciseParams newExerciseData});

  $RoutineIdCopyWith<$Res> get routineId;
  $SessionIdCopyWith<$Res> get sessionId;
  $ExerciseIdCopyWith<$Res> get exerciseId;
  $AddExerciseParamsCopyWith<$Res> get newExerciseData;
}

/// @nodoc
class _$UpdateExerciseInSessionParamsCopyWithImpl<$Res>
    implements $UpdateExerciseInSessionParamsCopyWith<$Res> {
  _$UpdateExerciseInSessionParamsCopyWithImpl(this._self, this._then);

  final UpdateExerciseInSessionParams _self;
  final $Res Function(UpdateExerciseInSessionParams) _then;

  /// Create a copy of UpdateExerciseInSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routineId = null,
    Object? sessionId = null,
    Object? exerciseId = null,
    Object? newExerciseData = null,
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
      exerciseId: null == exerciseId
          ? _self.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as ExerciseId,
      newExerciseData: null == newExerciseData
          ? _self.newExerciseData
          : newExerciseData // ignore: cast_nullable_to_non_nullable
              as AddExerciseParams,
    ));
  }

  /// Create a copy of UpdateExerciseInSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoutineIdCopyWith<$Res> get routineId {
    return $RoutineIdCopyWith<$Res>(_self.routineId, (value) {
      return _then(_self.copyWith(routineId: value));
    });
  }

  /// Create a copy of UpdateExerciseInSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionIdCopyWith<$Res> get sessionId {
    return $SessionIdCopyWith<$Res>(_self.sessionId, (value) {
      return _then(_self.copyWith(sessionId: value));
    });
  }

  /// Create a copy of UpdateExerciseInSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExerciseIdCopyWith<$Res> get exerciseId {
    return $ExerciseIdCopyWith<$Res>(_self.exerciseId, (value) {
      return _then(_self.copyWith(exerciseId: value));
    });
  }

  /// Create a copy of UpdateExerciseInSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddExerciseParamsCopyWith<$Res> get newExerciseData {
    return $AddExerciseParamsCopyWith<$Res>(_self.newExerciseData, (value) {
      return _then(_self.copyWith(newExerciseData: value));
    });
  }
}

/// @nodoc

class _UpdateExerciseInSessionParams implements UpdateExerciseInSessionParams {
  const _UpdateExerciseInSessionParams(
      {required this.routineId,
      required this.sessionId,
      required this.exerciseId,
      required this.newExerciseData});

  @override
  final RoutineId routineId;
  @override
  final SessionId sessionId;
  @override
  final ExerciseId exerciseId;
  @override
  final AddExerciseParams newExerciseData;

  /// Create a copy of UpdateExerciseInSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateExerciseInSessionParamsCopyWith<_UpdateExerciseInSessionParams>
      get copyWith => __$UpdateExerciseInSessionParamsCopyWithImpl<
          _UpdateExerciseInSessionParams>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateExerciseInSessionParams &&
            (identical(other.routineId, routineId) ||
                other.routineId == routineId) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.exerciseId, exerciseId) ||
                other.exerciseId == exerciseId) &&
            (identical(other.newExerciseData, newExerciseData) ||
                other.newExerciseData == newExerciseData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, routineId, sessionId, exerciseId, newExerciseData);

  @override
  String toString() {
    return 'UpdateExerciseInSessionParams(routineId: $routineId, sessionId: $sessionId, exerciseId: $exerciseId, newExerciseData: $newExerciseData)';
  }
}

/// @nodoc
abstract mixin class _$UpdateExerciseInSessionParamsCopyWith<$Res>
    implements $UpdateExerciseInSessionParamsCopyWith<$Res> {
  factory _$UpdateExerciseInSessionParamsCopyWith(
          _UpdateExerciseInSessionParams value,
          $Res Function(_UpdateExerciseInSessionParams) _then) =
      __$UpdateExerciseInSessionParamsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {RoutineId routineId,
      SessionId sessionId,
      ExerciseId exerciseId,
      AddExerciseParams newExerciseData});

  @override
  $RoutineIdCopyWith<$Res> get routineId;
  @override
  $SessionIdCopyWith<$Res> get sessionId;
  @override
  $ExerciseIdCopyWith<$Res> get exerciseId;
  @override
  $AddExerciseParamsCopyWith<$Res> get newExerciseData;
}

/// @nodoc
class __$UpdateExerciseInSessionParamsCopyWithImpl<$Res>
    implements _$UpdateExerciseInSessionParamsCopyWith<$Res> {
  __$UpdateExerciseInSessionParamsCopyWithImpl(this._self, this._then);

  final _UpdateExerciseInSessionParams _self;
  final $Res Function(_UpdateExerciseInSessionParams) _then;

  /// Create a copy of UpdateExerciseInSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? routineId = null,
    Object? sessionId = null,
    Object? exerciseId = null,
    Object? newExerciseData = null,
  }) {
    return _then(_UpdateExerciseInSessionParams(
      routineId: null == routineId
          ? _self.routineId
          : routineId // ignore: cast_nullable_to_non_nullable
              as RoutineId,
      sessionId: null == sessionId
          ? _self.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as SessionId,
      exerciseId: null == exerciseId
          ? _self.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as ExerciseId,
      newExerciseData: null == newExerciseData
          ? _self.newExerciseData
          : newExerciseData // ignore: cast_nullable_to_non_nullable
              as AddExerciseParams,
    ));
  }

  /// Create a copy of UpdateExerciseInSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoutineIdCopyWith<$Res> get routineId {
    return $RoutineIdCopyWith<$Res>(_self.routineId, (value) {
      return _then(_self.copyWith(routineId: value));
    });
  }

  /// Create a copy of UpdateExerciseInSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionIdCopyWith<$Res> get sessionId {
    return $SessionIdCopyWith<$Res>(_self.sessionId, (value) {
      return _then(_self.copyWith(sessionId: value));
    });
  }

  /// Create a copy of UpdateExerciseInSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExerciseIdCopyWith<$Res> get exerciseId {
    return $ExerciseIdCopyWith<$Res>(_self.exerciseId, (value) {
      return _then(_self.copyWith(exerciseId: value));
    });
  }

  /// Create a copy of UpdateExerciseInSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddExerciseParamsCopyWith<$Res> get newExerciseData {
    return $AddExerciseParamsCopyWith<$Res>(_self.newExerciseData, (value) {
      return _then(_self.copyWith(newExerciseData: value));
    });
  }
}

// dart format on
