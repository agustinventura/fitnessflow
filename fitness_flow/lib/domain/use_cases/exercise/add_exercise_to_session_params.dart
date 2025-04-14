import 'package:freezed_annotation/freezed_annotation.dart';

import '../../value_objects/routine_id.dart';
import '../../value_objects/session_id.dart';
import 'add_exercise_params.dart';

part 'add_exercise_to_session_params.freezed.dart';

@freezed
abstract class AddExerciseToSessionParams with _$AddExerciseToSessionParams {
  const factory AddExerciseToSessionParams({
    required RoutineId routineId,
    required SessionId sessionId,
    required AddExerciseParams exerciseParams,
  }) = _AddExerciseToSessionParams;
}
