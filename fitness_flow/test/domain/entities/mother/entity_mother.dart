import 'package:fitness_flow/domain/entities/exercise.dart';
import 'package:fitness_flow/domain/entities/routine.dart';
import 'package:fitness_flow/domain/entities/session.dart';
import 'package:fitness_flow/domain/entities/session_item.dart';
import 'package:fitness_flow/domain/entities/workout_session.dart';
import 'package:fitness_flow/domain/value_objects/exercise_id.dart';
import 'package:fitness_flow/domain/value_objects/performed_exercise.dart';
import 'package:fitness_flow/domain/value_objects/rest_time.dart';
import 'package:fitness_flow/domain/value_objects/routine_id.dart';
import 'package:fitness_flow/domain/value_objects/session_id.dart';
import 'package:fitness_flow/domain/value_objects/target_series.dart';
import 'package:fitness_flow/domain/value_objects/weight.dart';
import 'package:fitness_flow/domain/value_objects/workout_goal.dart';
import 'package:fitness_flow/domain/value_objects/workout_session_id.dart';

import '../../value_objects/mother/value_object_mother.dart';

class EntityMother {
  static Exercise exercise({
    ExerciseId? id,
    String name = 'Default Exercise',
    TargetSeries? targetSeries,
    WorkoutGoal? goal,
    Weight? weight,
    RestTime? restTime,
  }) {
    return Exercise(
      id: id ?? ValueObjectMother.exerciseId(),
      name: name,
      targetSeries: targetSeries ?? ValueObjectMother.targetSeries(),
      goal: goal ?? ValueObjectMother.workoutGoal(),
      weight: weight,
      restTime: restTime ?? ValueObjectMother.restTime(),
    );
  }

  static SessionItem sessionItemExercise({Exercise? exercise}) {
    return SessionItem.exercise(exercise: exercise ?? EntityMother.exercise());
  }

  static SessionItem sessionItemRest({RestTime? restTime}) {
    return SessionItem.rest(restTime: restTime ?? ValueObjectMother.restTime());
  }

  static Session session({
    SessionId? id,
    String name = 'Default Session',
    List<SessionItem>? items,
    int order = 1,
  }) {
    return Session(
      id: id ?? ValueObjectMother.sessionId(),
      name: name,
      items: items ??
          [
            sessionItemExercise(
                exercise:
                    exercise(id: ValueObjectMother.exerciseId(value: 'ex1'))),
            sessionItemRest(),
            sessionItemExercise(
                exercise: exercise(
                    id: ValueObjectMother.exerciseId(value: 'ex2'),
                    name: 'Exercise 2')),
          ],
      order: order,
    );
  }

  static Routine routine({
    RoutineId? id,
    String name = 'Default Routine',
    List<Session>? sessions,
  }) {
    return Routine(
      id: id ?? ValueObjectMother.routineId(),
      name: name,
      sessions: sessions ??
          [
            EntityMother.session(),
            EntityMother.session(
                id: ValueObjectMother.sessionId(value: 's2'),
                name: 'Session 2',
                order: 2)
          ],
    );
  }

  static WorkoutSession workoutSession({
    WorkoutSessionId? id,
    RoutineId? originalRoutineId,
    SessionId? originalSessionId,
    String routineName = 'Default Routine Name',
    String sessionName = 'Default Session Name',
    DateTime? startTime,
    DateTime? endTime,
    Duration? duration,
    List<PerformedExercise>? performedExercises,
    String? notes,
    bool isCompleted = true,
  }) {
    final effectiveStartTime = startTime ?? DateTime(2024, 1, 1, 10, 0, 0);
    final effectiveEndTime = endTime ??
        (isCompleted ? effectiveStartTime.add(const Duration(hours: 1)) : null);
    final effectiveDuration =
        duration ?? (effectiveEndTime?.difference(effectiveStartTime));

    return WorkoutSession(
      id: id ?? ValueObjectMother.workoutSessionId(),
      originalRoutineId: originalRoutineId ?? ValueObjectMother.routineId(),
      originalSessionId: originalSessionId ?? ValueObjectMother.sessionId(),
      routineName: routineName,
      sessionName: sessionName,
      startTime: effectiveStartTime,
      endTime: effectiveEndTime,
      duration: effectiveDuration,
      performedExercises: performedExercises ??
          [
            ValueObjectMother.performedExercise(),
            ValueObjectMother.performedExercise(
                exerciseName: 'Exercise 2', seriesCompleted: 2)
          ],
      notes: notes,
      isCompleted: isCompleted,
    );
  }
}
