import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_objects/exercise_id.dart';
import '../value_objects/rest_time.dart';
import '../value_objects/target_series.dart';
import '../value_objects/weight.dart';
import '../value_objects/workout_goal.dart';

part 'exercise.freezed.dart';

@freezed
abstract class Exercise with _$Exercise {
  const Exercise._();

  factory Exercise({
    required ExerciseId id,
    required String name,
    required TargetSeries targetSeries,
    required WorkoutGoal goal,
    Weight? weight,
    required RestTime restTime,
  }) = _Exercise;
}
