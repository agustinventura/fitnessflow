// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkoutSession {
  WorkoutSessionId get id;
  RoutineId get originalRoutineId;
  SessionId get originalSessionId;
  String get routineName;
  String get sessionName;
  DateTime get startTime;
  DateTime? get endTime;
  Duration? get duration;
  List<PerformedExercise> get performedExercises;
  String? get notes;
  bool get isCompleted;

  /// Create a copy of WorkoutSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WorkoutSessionCopyWith<WorkoutSession> get copyWith =>
      _$WorkoutSessionCopyWithImpl<WorkoutSession>(
          this as WorkoutSession, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WorkoutSession &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originalRoutineId, originalRoutineId) ||
                other.originalRoutineId == originalRoutineId) &&
            (identical(other.originalSessionId, originalSessionId) ||
                other.originalSessionId == originalSessionId) &&
            (identical(other.routineName, routineName) ||
                other.routineName == routineName) &&
            (identical(other.sessionName, sessionName) ||
                other.sessionName == sessionName) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality()
                .equals(other.performedExercises, performedExercises) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      originalRoutineId,
      originalSessionId,
      routineName,
      sessionName,
      startTime,
      endTime,
      duration,
      const DeepCollectionEquality().hash(performedExercises),
      notes,
      isCompleted);

  @override
  String toString() {
    return 'WorkoutSession(id: $id, originalRoutineId: $originalRoutineId, originalSessionId: $originalSessionId, routineName: $routineName, sessionName: $sessionName, startTime: $startTime, endTime: $endTime, duration: $duration, performedExercises: $performedExercises, notes: $notes, isCompleted: $isCompleted)';
  }
}

/// @nodoc
abstract mixin class $WorkoutSessionCopyWith<$Res> {
  factory $WorkoutSessionCopyWith(
          WorkoutSession value, $Res Function(WorkoutSession) _then) =
      _$WorkoutSessionCopyWithImpl;
  @useResult
  $Res call(
      {WorkoutSessionId id,
      RoutineId originalRoutineId,
      SessionId originalSessionId,
      String routineName,
      String sessionName,
      DateTime startTime,
      DateTime? endTime,
      Duration? duration,
      List<PerformedExercise> performedExercises,
      String? notes,
      bool isCompleted});

  $WorkoutSessionIdCopyWith<$Res> get id;
  $RoutineIdCopyWith<$Res> get originalRoutineId;
  $SessionIdCopyWith<$Res> get originalSessionId;
}

/// @nodoc
class _$WorkoutSessionCopyWithImpl<$Res>
    implements $WorkoutSessionCopyWith<$Res> {
  _$WorkoutSessionCopyWithImpl(this._self, this._then);

  final WorkoutSession _self;
  final $Res Function(WorkoutSession) _then;

  /// Create a copy of WorkoutSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? originalRoutineId = null,
    Object? originalSessionId = null,
    Object? routineName = null,
    Object? sessionName = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? duration = freezed,
    Object? performedExercises = null,
    Object? notes = freezed,
    Object? isCompleted = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as WorkoutSessionId,
      originalRoutineId: null == originalRoutineId
          ? _self.originalRoutineId
          : originalRoutineId // ignore: cast_nullable_to_non_nullable
              as RoutineId,
      originalSessionId: null == originalSessionId
          ? _self.originalSessionId
          : originalSessionId // ignore: cast_nullable_to_non_nullable
              as SessionId,
      routineName: null == routineName
          ? _self.routineName
          : routineName // ignore: cast_nullable_to_non_nullable
              as String,
      sessionName: null == sessionName
          ? _self.sessionName
          : sessionName // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _self.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: freezed == endTime
          ? _self.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      performedExercises: null == performedExercises
          ? _self.performedExercises
          : performedExercises // ignore: cast_nullable_to_non_nullable
              as List<PerformedExercise>,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: null == isCompleted
          ? _self.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of WorkoutSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkoutSessionIdCopyWith<$Res> get id {
    return $WorkoutSessionIdCopyWith<$Res>(_self.id, (value) {
      return _then(_self.copyWith(id: value));
    });
  }

  /// Create a copy of WorkoutSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoutineIdCopyWith<$Res> get originalRoutineId {
    return $RoutineIdCopyWith<$Res>(_self.originalRoutineId, (value) {
      return _then(_self.copyWith(originalRoutineId: value));
    });
  }

  /// Create a copy of WorkoutSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionIdCopyWith<$Res> get originalSessionId {
    return $SessionIdCopyWith<$Res>(_self.originalSessionId, (value) {
      return _then(_self.copyWith(originalSessionId: value));
    });
  }
}

/// @nodoc

class _WorkoutSession extends WorkoutSession {
  _WorkoutSession(
      {required this.id,
      required this.originalRoutineId,
      required this.originalSessionId,
      required this.routineName,
      required this.sessionName,
      required this.startTime,
      this.endTime,
      this.duration,
      required final List<PerformedExercise> performedExercises,
      this.notes,
      required this.isCompleted})
      : _performedExercises = performedExercises,
        super._();

  @override
  final WorkoutSessionId id;
  @override
  final RoutineId originalRoutineId;
  @override
  final SessionId originalSessionId;
  @override
  final String routineName;
  @override
  final String sessionName;
  @override
  final DateTime startTime;
  @override
  final DateTime? endTime;
  @override
  final Duration? duration;
  final List<PerformedExercise> _performedExercises;
  @override
  List<PerformedExercise> get performedExercises {
    if (_performedExercises is EqualUnmodifiableListView)
      return _performedExercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_performedExercises);
  }

  @override
  final String? notes;
  @override
  final bool isCompleted;

  /// Create a copy of WorkoutSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WorkoutSessionCopyWith<_WorkoutSession> get copyWith =>
      __$WorkoutSessionCopyWithImpl<_WorkoutSession>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkoutSession &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originalRoutineId, originalRoutineId) ||
                other.originalRoutineId == originalRoutineId) &&
            (identical(other.originalSessionId, originalSessionId) ||
                other.originalSessionId == originalSessionId) &&
            (identical(other.routineName, routineName) ||
                other.routineName == routineName) &&
            (identical(other.sessionName, sessionName) ||
                other.sessionName == sessionName) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality()
                .equals(other._performedExercises, _performedExercises) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      originalRoutineId,
      originalSessionId,
      routineName,
      sessionName,
      startTime,
      endTime,
      duration,
      const DeepCollectionEquality().hash(_performedExercises),
      notes,
      isCompleted);

  @override
  String toString() {
    return 'WorkoutSession(id: $id, originalRoutineId: $originalRoutineId, originalSessionId: $originalSessionId, routineName: $routineName, sessionName: $sessionName, startTime: $startTime, endTime: $endTime, duration: $duration, performedExercises: $performedExercises, notes: $notes, isCompleted: $isCompleted)';
  }
}

/// @nodoc
abstract mixin class _$WorkoutSessionCopyWith<$Res>
    implements $WorkoutSessionCopyWith<$Res> {
  factory _$WorkoutSessionCopyWith(
          _WorkoutSession value, $Res Function(_WorkoutSession) _then) =
      __$WorkoutSessionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {WorkoutSessionId id,
      RoutineId originalRoutineId,
      SessionId originalSessionId,
      String routineName,
      String sessionName,
      DateTime startTime,
      DateTime? endTime,
      Duration? duration,
      List<PerformedExercise> performedExercises,
      String? notes,
      bool isCompleted});

  @override
  $WorkoutSessionIdCopyWith<$Res> get id;
  @override
  $RoutineIdCopyWith<$Res> get originalRoutineId;
  @override
  $SessionIdCopyWith<$Res> get originalSessionId;
}

/// @nodoc
class __$WorkoutSessionCopyWithImpl<$Res>
    implements _$WorkoutSessionCopyWith<$Res> {
  __$WorkoutSessionCopyWithImpl(this._self, this._then);

  final _WorkoutSession _self;
  final $Res Function(_WorkoutSession) _then;

  /// Create a copy of WorkoutSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? originalRoutineId = null,
    Object? originalSessionId = null,
    Object? routineName = null,
    Object? sessionName = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? duration = freezed,
    Object? performedExercises = null,
    Object? notes = freezed,
    Object? isCompleted = null,
  }) {
    return _then(_WorkoutSession(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as WorkoutSessionId,
      originalRoutineId: null == originalRoutineId
          ? _self.originalRoutineId
          : originalRoutineId // ignore: cast_nullable_to_non_nullable
              as RoutineId,
      originalSessionId: null == originalSessionId
          ? _self.originalSessionId
          : originalSessionId // ignore: cast_nullable_to_non_nullable
              as SessionId,
      routineName: null == routineName
          ? _self.routineName
          : routineName // ignore: cast_nullable_to_non_nullable
              as String,
      sessionName: null == sessionName
          ? _self.sessionName
          : sessionName // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _self.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: freezed == endTime
          ? _self.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      duration: freezed == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      performedExercises: null == performedExercises
          ? _self._performedExercises
          : performedExercises // ignore: cast_nullable_to_non_nullable
              as List<PerformedExercise>,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: null == isCompleted
          ? _self.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of WorkoutSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkoutSessionIdCopyWith<$Res> get id {
    return $WorkoutSessionIdCopyWith<$Res>(_self.id, (value) {
      return _then(_self.copyWith(id: value));
    });
  }

  /// Create a copy of WorkoutSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoutineIdCopyWith<$Res> get originalRoutineId {
    return $RoutineIdCopyWith<$Res>(_self.originalRoutineId, (value) {
      return _then(_self.copyWith(originalRoutineId: value));
    });
  }

  /// Create a copy of WorkoutSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionIdCopyWith<$Res> get originalSessionId {
    return $SessionIdCopyWith<$Res>(_self.originalSessionId, (value) {
      return _then(_self.copyWith(originalSessionId: value));
    });
  }
}

// dart format on
