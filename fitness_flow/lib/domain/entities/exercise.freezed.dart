// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Exercise {
  ExerciseId get id;
  String get name;
  TargetSeries get targetSeries;
  WorkoutGoal get goal;
  Weight? get weight;
  RestTime get restTime;

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExerciseCopyWith<Exercise> get copyWith =>
      _$ExerciseCopyWithImpl<Exercise>(this as Exercise, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Exercise &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.targetSeries, targetSeries) ||
                other.targetSeries == targetSeries) &&
            (identical(other.goal, goal) || other.goal == goal) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.restTime, restTime) ||
                other.restTime == restTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, targetSeries, goal, weight, restTime);

  @override
  String toString() {
    return 'Exercise(id: $id, name: $name, targetSeries: $targetSeries, goal: $goal, weight: $weight, restTime: $restTime)';
  }
}

/// @nodoc
abstract mixin class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) _then) =
      _$ExerciseCopyWithImpl;
  @useResult
  $Res call(
      {ExerciseId id,
      String name,
      TargetSeries targetSeries,
      WorkoutGoal goal,
      Weight? weight,
      RestTime restTime});

  $ExerciseIdCopyWith<$Res> get id;
  $TargetSeriesCopyWith<$Res> get targetSeries;
  $WorkoutGoalCopyWith<$Res> get goal;
  $WeightCopyWith<$Res>? get weight;
  $RestTimeCopyWith<$Res> get restTime;
}

/// @nodoc
class _$ExerciseCopyWithImpl<$Res> implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._self, this._then);

  final Exercise _self;
  final $Res Function(Exercise) _then;

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? targetSeries = null,
    Object? goal = null,
    Object? weight = freezed,
    Object? restTime = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as ExerciseId,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      targetSeries: null == targetSeries
          ? _self.targetSeries
          : targetSeries // ignore: cast_nullable_to_non_nullable
              as TargetSeries,
      goal: null == goal
          ? _self.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as WorkoutGoal,
      weight: freezed == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Weight?,
      restTime: null == restTime
          ? _self.restTime
          : restTime // ignore: cast_nullable_to_non_nullable
              as RestTime,
    ));
  }

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExerciseIdCopyWith<$Res> get id {
    return $ExerciseIdCopyWith<$Res>(_self.id, (value) {
      return _then(_self.copyWith(id: value));
    });
  }

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TargetSeriesCopyWith<$Res> get targetSeries {
    return $TargetSeriesCopyWith<$Res>(_self.targetSeries, (value) {
      return _then(_self.copyWith(targetSeries: value));
    });
  }

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkoutGoalCopyWith<$Res> get goal {
    return $WorkoutGoalCopyWith<$Res>(_self.goal, (value) {
      return _then(_self.copyWith(goal: value));
    });
  }

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeightCopyWith<$Res>? get weight {
    if (_self.weight == null) {
      return null;
    }

    return $WeightCopyWith<$Res>(_self.weight!, (value) {
      return _then(_self.copyWith(weight: value));
    });
  }

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RestTimeCopyWith<$Res> get restTime {
    return $RestTimeCopyWith<$Res>(_self.restTime, (value) {
      return _then(_self.copyWith(restTime: value));
    });
  }
}

/// @nodoc

class _Exercise extends Exercise {
  _Exercise(
      {required this.id,
      required this.name,
      required this.targetSeries,
      required this.goal,
      this.weight,
      required this.restTime})
      : super._();

  @override
  final ExerciseId id;
  @override
  final String name;
  @override
  final TargetSeries targetSeries;
  @override
  final WorkoutGoal goal;
  @override
  final Weight? weight;
  @override
  final RestTime restTime;

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExerciseCopyWith<_Exercise> get copyWith =>
      __$ExerciseCopyWithImpl<_Exercise>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Exercise &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.targetSeries, targetSeries) ||
                other.targetSeries == targetSeries) &&
            (identical(other.goal, goal) || other.goal == goal) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.restTime, restTime) ||
                other.restTime == restTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, targetSeries, goal, weight, restTime);

  @override
  String toString() {
    return 'Exercise(id: $id, name: $name, targetSeries: $targetSeries, goal: $goal, weight: $weight, restTime: $restTime)';
  }
}

/// @nodoc
abstract mixin class _$ExerciseCopyWith<$Res>
    implements $ExerciseCopyWith<$Res> {
  factory _$ExerciseCopyWith(_Exercise value, $Res Function(_Exercise) _then) =
      __$ExerciseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ExerciseId id,
      String name,
      TargetSeries targetSeries,
      WorkoutGoal goal,
      Weight? weight,
      RestTime restTime});

  @override
  $ExerciseIdCopyWith<$Res> get id;
  @override
  $TargetSeriesCopyWith<$Res> get targetSeries;
  @override
  $WorkoutGoalCopyWith<$Res> get goal;
  @override
  $WeightCopyWith<$Res>? get weight;
  @override
  $RestTimeCopyWith<$Res> get restTime;
}

/// @nodoc
class __$ExerciseCopyWithImpl<$Res> implements _$ExerciseCopyWith<$Res> {
  __$ExerciseCopyWithImpl(this._self, this._then);

  final _Exercise _self;
  final $Res Function(_Exercise) _then;

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? targetSeries = null,
    Object? goal = null,
    Object? weight = freezed,
    Object? restTime = null,
  }) {
    return _then(_Exercise(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as ExerciseId,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      targetSeries: null == targetSeries
          ? _self.targetSeries
          : targetSeries // ignore: cast_nullable_to_non_nullable
              as TargetSeries,
      goal: null == goal
          ? _self.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as WorkoutGoal,
      weight: freezed == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Weight?,
      restTime: null == restTime
          ? _self.restTime
          : restTime // ignore: cast_nullable_to_non_nullable
              as RestTime,
    ));
  }

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExerciseIdCopyWith<$Res> get id {
    return $ExerciseIdCopyWith<$Res>(_self.id, (value) {
      return _then(_self.copyWith(id: value));
    });
  }

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TargetSeriesCopyWith<$Res> get targetSeries {
    return $TargetSeriesCopyWith<$Res>(_self.targetSeries, (value) {
      return _then(_self.copyWith(targetSeries: value));
    });
  }

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkoutGoalCopyWith<$Res> get goal {
    return $WorkoutGoalCopyWith<$Res>(_self.goal, (value) {
      return _then(_self.copyWith(goal: value));
    });
  }

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeightCopyWith<$Res>? get weight {
    if (_self.weight == null) {
      return null;
    }

    return $WeightCopyWith<$Res>(_self.weight!, (value) {
      return _then(_self.copyWith(weight: value));
    });
  }

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RestTimeCopyWith<$Res> get restTime {
    return $RestTimeCopyWith<$Res>(_self.restTime, (value) {
      return _then(_self.copyWith(restTime: value));
    });
  }
}

// dart format on
