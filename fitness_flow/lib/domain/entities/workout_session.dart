import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_objects/performed_exercise.dart';
import '../value_objects/routine_id.dart';
import '../value_objects/session_id.dart';
import '../value_objects/workout_session_id.dart';

part 'workout_session.freezed.dart';

@freezed
abstract class WorkoutSession with _$WorkoutSession {
  const WorkoutSession._();

  factory WorkoutSession({
    required WorkoutSessionId id,
    required RoutineId originalRoutineId,
    required SessionId originalSessionId,
    required String routineName,
    required String sessionName,
    required DateTime startTime,
    DateTime? endTime,
    Duration? duration,
    required List<PerformedExercise> performedExercises,
    String? notes,
    required bool isCompleted,
  }) = _WorkoutSession;
}
