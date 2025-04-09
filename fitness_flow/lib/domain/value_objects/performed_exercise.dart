import 'package:fitness_flow/domain/value_objects/weight.dart';
import 'package:fitness_flow/domain/value_objects/workout_goal.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'performed_exercise.freezed.dart';

@freezed
abstract class PerformedExercise with _$PerformedExercise {
  PerformedExercise._({
    required this.exerciseName,
    this.weight,
    required this.seriesCompleted,
    required this.originalGoal,
  })  : assert(seriesCompleted >= 0, 'Completed series must be positive.'),
        assert(exerciseName.trim().isNotEmpty, 'Exercise name must be filled.');

  //This factory can't be const because freezed example:
  //@Assert('exerciseName.isNotEmpty', 'Exercise name must be filled.');
  //does not work for some reason.
  //We remove const (assuming performance impact) to place validations
  factory PerformedExercise({
    required String exerciseName,
    Weight? weight,
    required int seriesCompleted,
    required WorkoutGoal originalGoal,
  }) = _PerformedExercise;

  @override
  final String exerciseName;
  @override
  final Weight? weight;
  @override
  final int seriesCompleted;
  @override
  final WorkoutGoal originalGoal;
}
