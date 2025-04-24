import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../value_objects/workout_unit.dart';

part 'exercise_params.freezed.dart';

@freezed
abstract class ExerciseParams with _$ExerciseParams {
  const factory ExerciseParams({
    required String name,
    required int targetSeriesCount,
    required int goalQuantity,
    required WorkoutUnit goalUnit,
    double? weightValue,
    required int restTimeInSeconds,
  }) = _ExerciseParams;
}
