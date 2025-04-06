// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'performed_exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PerformedExercise implements DiagnosticableTreeMixin {
  String get exerciseName;

  Weight? get weight;

  int get seriesCompleted;

  WorkoutGoal get originalGoal;

  /// Create a copy of PerformedExercise
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PerformedExerciseCopyWith<PerformedExercise> get copyWith =>
      _$PerformedExerciseCopyWithImpl<PerformedExercise>(
          this as PerformedExercise, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'PerformedExercise'))
      ..add(DiagnosticsProperty('exerciseName', exerciseName))
      ..add(DiagnosticsProperty('weight', weight))
      ..add(DiagnosticsProperty('seriesCompleted', seriesCompleted))
      ..add(DiagnosticsProperty('originalGoal', originalGoal));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PerformedExercise &&
            (identical(other.exerciseName, exerciseName) ||
                other.exerciseName == exerciseName) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.seriesCompleted, seriesCompleted) ||
                other.seriesCompleted == seriesCompleted) &&
            (identical(other.originalGoal, originalGoal) ||
                other.originalGoal == originalGoal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, exerciseName, weight, seriesCompleted, originalGoal);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PerformedExercise(exerciseName: $exerciseName, weight: $weight, seriesCompleted: $seriesCompleted, originalGoal: $originalGoal)';
  }
}

/// @nodoc
abstract mixin class $PerformedExerciseCopyWith<$Res> {
  factory $PerformedExerciseCopyWith(
          PerformedExercise value, $Res Function(PerformedExercise) _then) =
      _$PerformedExerciseCopyWithImpl;

  @useResult
  $Res call(
      {String exerciseName,
      Weight? weight,
      int seriesCompleted,
      WorkoutGoal originalGoal});

  $WeightCopyWith<$Res>? get weight;

  $WorkoutGoalCopyWith<$Res> get originalGoal;
}

/// @nodoc
class _$PerformedExerciseCopyWithImpl<$Res>
    implements $PerformedExerciseCopyWith<$Res> {
  _$PerformedExerciseCopyWithImpl(this._self, this._then);

  final PerformedExercise _self;
  final $Res Function(PerformedExercise) _then;

  /// Create a copy of PerformedExercise
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exerciseName = null,
    Object? weight = freezed,
    Object? seriesCompleted = null,
    Object? originalGoal = null,
  }) {
    return _then(_self.copyWith(
      exerciseName: null == exerciseName
          ? _self.exerciseName
          : exerciseName // ignore: cast_nullable_to_non_nullable
              as String,
      weight: freezed == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Weight?,
      seriesCompleted: null == seriesCompleted
          ? _self.seriesCompleted
          : seriesCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      originalGoal: null == originalGoal
          ? _self.originalGoal
          : originalGoal // ignore: cast_nullable_to_non_nullable
              as WorkoutGoal,
    ));
  }

  /// Create a copy of PerformedExercise
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

  /// Create a copy of PerformedExercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkoutGoalCopyWith<$Res> get originalGoal {
    return $WorkoutGoalCopyWith<$Res>(_self.originalGoal, (value) {
      return _then(_self.copyWith(originalGoal: value));
    });
  }
}

/// @nodoc

class _PerformedExercise extends PerformedExercise
    with DiagnosticableTreeMixin {
  _PerformedExercise(
      {required final String exerciseName,
      final Weight? weight,
      required final int seriesCompleted,
      required final WorkoutGoal originalGoal})
      : super._(
            exerciseName: exerciseName,
            weight: weight,
            seriesCompleted: seriesCompleted,
            originalGoal: originalGoal);

  /// Create a copy of PerformedExercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PerformedExerciseCopyWith<_PerformedExercise> get copyWith =>
      __$PerformedExerciseCopyWithImpl<_PerformedExercise>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'PerformedExercise'))
      ..add(DiagnosticsProperty('exerciseName', exerciseName))
      ..add(DiagnosticsProperty('weight', weight))
      ..add(DiagnosticsProperty('seriesCompleted', seriesCompleted))
      ..add(DiagnosticsProperty('originalGoal', originalGoal));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PerformedExercise &&
            (identical(other.exerciseName, exerciseName) ||
                other.exerciseName == exerciseName) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.seriesCompleted, seriesCompleted) ||
                other.seriesCompleted == seriesCompleted) &&
            (identical(other.originalGoal, originalGoal) ||
                other.originalGoal == originalGoal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, exerciseName, weight, seriesCompleted, originalGoal);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PerformedExercise(exerciseName: $exerciseName, weight: $weight, seriesCompleted: $seriesCompleted, originalGoal: $originalGoal)';
  }
}

/// @nodoc
abstract mixin class _$PerformedExerciseCopyWith<$Res>
    implements $PerformedExerciseCopyWith<$Res> {
  factory _$PerformedExerciseCopyWith(
          _PerformedExercise value, $Res Function(_PerformedExercise) _then) =
      __$PerformedExerciseCopyWithImpl;

  @override
  @useResult
  $Res call(
      {String exerciseName,
      Weight? weight,
      int seriesCompleted,
      WorkoutGoal originalGoal});

  @override
  $WeightCopyWith<$Res>? get weight;

  @override
  $WorkoutGoalCopyWith<$Res> get originalGoal;
}

/// @nodoc
class __$PerformedExerciseCopyWithImpl<$Res>
    implements _$PerformedExerciseCopyWith<$Res> {
  __$PerformedExerciseCopyWithImpl(this._self, this._then);

  final _PerformedExercise _self;
  final $Res Function(_PerformedExercise) _then;

  /// Create a copy of PerformedExercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? exerciseName = null,
    Object? weight = freezed,
    Object? seriesCompleted = null,
    Object? originalGoal = null,
  }) {
    return _then(_PerformedExercise(
      exerciseName: null == exerciseName
          ? _self.exerciseName
          : exerciseName // ignore: cast_nullable_to_non_nullable
              as String,
      weight: freezed == weight
          ? _self.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Weight?,
      seriesCompleted: null == seriesCompleted
          ? _self.seriesCompleted
          : seriesCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      originalGoal: null == originalGoal
          ? _self.originalGoal
          : originalGoal // ignore: cast_nullable_to_non_nullable
              as WorkoutGoal,
    ));
  }

  /// Create a copy of PerformedExercise
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

  /// Create a copy of PerformedExercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkoutGoalCopyWith<$Res> get originalGoal {
    return $WorkoutGoalCopyWith<$Res>(_self.originalGoal, (value) {
      return _then(_self.copyWith(originalGoal: value));
    });
  }
}

// dart format on
