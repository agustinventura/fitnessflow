import 'package:freezed_annotation/freezed_annotation.dart';

import '../../value_objects/workout_unit.dart';

part 'add_exercise_params.freezed.dart';

@freezed
abstract class AddExerciseParams with _$AddExerciseParams {
  const factory AddExerciseParams({
    required String name,
    required int targetSeriesCount,
    required int goalQuantity,
    required WorkoutUnit goalUnit,
    double? weightValue,
    required int restTimeInSeconds,
  }) = _AddExerciseParams;
}
