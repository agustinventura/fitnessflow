import 'package:fitness_flow/domain/value_objects/workout_unit.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_goal.freezed.dart';

@freezed
abstract class WorkoutGoal with _$WorkoutGoal {
  const WorkoutGoal._();

  @Assert('quantity > 0', 'Amount must be positive')
  const factory WorkoutGoal({
    required int quantity,
    required WorkoutUnit unit,
  }) = _WorkoutGoal;
}
