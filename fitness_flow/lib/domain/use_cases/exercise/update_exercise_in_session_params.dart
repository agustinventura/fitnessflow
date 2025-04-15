import 'package:freezed_annotation/freezed_annotation.dart';

import '../../value_objects/exercise_id.dart';
import '../../value_objects/routine_id.dart';
import '../../value_objects/session_id.dart';
import 'add_exercise_params.dart';

part 'update_exercise_in_session_params.freezed.dart';

@freezed
abstract class UpdateExerciseInSessionParams
    with _$UpdateExerciseInSessionParams {
  const factory UpdateExerciseInSessionParams({
    required RoutineId routineId,
    required SessionId sessionId,
    required ExerciseId exerciseId,
    required AddExerciseParams newExerciseData,
  }) = _UpdateExerciseInSessionParams;
}
