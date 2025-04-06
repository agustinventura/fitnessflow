import 'package:fitness_flow/domain/value_objects/exercise_id.dart';
import 'package:fitness_flow/domain/value_objects/performed_exercise.dart';
import 'package:fitness_flow/domain/value_objects/rest_time.dart';
import 'package:fitness_flow/domain/value_objects/routine_id.dart';
import 'package:fitness_flow/domain/value_objects/session_id.dart';
import 'package:fitness_flow/domain/value_objects/target_series.dart';
import 'package:fitness_flow/domain/value_objects/weight.dart';
import 'package:fitness_flow/domain/value_objects/weight_unit.dart';
import 'package:fitness_flow/domain/value_objects/workout_goal.dart';
import 'package:fitness_flow/domain/value_objects/workout_session_id.dart';
import 'package:fitness_flow/domain/value_objects/workout_unit.dart';

class ValueObjectMother {
  static RoutineId routineId({String value = 'default_routine_id'}) =>
      RoutineId(value);

  static SessionId sessionId({String value = 'default_session_id'}) =>
      SessionId(value);

  static ExerciseId exerciseId({String value = 'default_exercise_id'}) =>
      ExerciseId(value);

  static WorkoutSessionId workoutSessionId({String value = 'default_ws_id'}) =>
      WorkoutSessionId(value);

  static WorkoutGoal workoutGoal({
    int quantity = 10,
    WorkoutUnit unit = WorkoutUnit.reps,
  }) =>
      WorkoutGoal(quantity: quantity, unit: unit);

  static Weight weight({
    double value = 50.0,
    WeightUnit unit = WeightUnit.kg,
  }) =>
      Weight(value: value, unit: unit);

  static RestTime restTime({
    int durationInSeconds = 60,
  }) =>
      RestTime(durationInSeconds: durationInSeconds);

  static TargetSeries targetSeries({
    int count = 3,
  }) =>
      TargetSeries(count: count);

  static PerformedExercise performedExercise({
    String exerciseName = 'Default Performed Exercise',
    Weight? weight,
    int seriesCompleted = 3,
    WorkoutGoal? originalGoal,
  }) {
    return PerformedExercise(
      exerciseName: exerciseName,
      weight: weight,
      seriesCompleted: seriesCompleted,
      originalGoal: originalGoal ?? workoutGoal(),
    );
  }
}
