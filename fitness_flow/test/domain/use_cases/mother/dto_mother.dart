import 'package:fitness_flow/domain/use_cases/exercise/dtos/exercise_params.dart';
import 'package:fitness_flow/domain/use_cases/rest/dtos/rest_params.dart';
import 'package:fitness_flow/domain/use_cases/routine/dtos/routine_params.dart';
import 'package:fitness_flow/domain/use_cases/session/session_params.dart';
import 'package:fitness_flow/domain/use_cases/session_item/dtos/session_item_params.dart';
import 'package:fitness_flow/domain/value_objects/workout_unit.dart';

class DtoMother {
  static ExerciseParams exerciseParams({
    String name = 'Default Test Exercise',
    int targetSeriesCount = 3,
    int goalQuantity = 10,
    WorkoutUnit goalUnit = WorkoutUnit.reps,
    double? weightValue,
    int restTimeInSeconds = 60,
  }) =>
      ExerciseParams(
        name: name,
        targetSeriesCount: targetSeriesCount,
        goalQuantity: goalQuantity,
        goalUnit: goalUnit,
        weightValue: weightValue,
        restTimeInSeconds: restTimeInSeconds,
      );

  static RestParams restParams({required int duration}) =>
      RestParams(durationInSeconds: duration);

  static SessionItemParams addExerciseSessionItemParams({
    String name = 'Default Test Exercise',
    int targetSeriesCount = 3,
    int goalQuantity = 10,
    WorkoutUnit goalUnit = WorkoutUnit.reps,
    double? weightValue,
    int restTimeInSeconds = 60,
  }) =>
      SessionItemParams.exercise(
          params: exerciseParams(
              name: name,
              targetSeriesCount: targetSeriesCount,
              goalQuantity: goalQuantity,
              goalUnit: goalUnit,
              weightValue: weightValue,
              restTimeInSeconds: restTimeInSeconds));

  static SessionParams addSessionParams({
    String name = 'Default Test Session',
    List<SessionItemParams>? items,
  }) =>
      SessionParams(
        name: name,
        items: items ?? [addExerciseSessionItemParams()],
      );

  static RoutineParams routineParams({
    String name = 'Default Test Routine',
    List<SessionParams>? initialSessions,
  }) =>
      RoutineParams(
        name: name,
        initialSessions: initialSessions ?? [addSessionParams()],
      );

  static RoutineParams routineParamsEmpty({
    String name = 'Empty Test Routine',
  }) =>
      RoutineParams(
        name: name,
        initialSessions: [],
      );

  static RoutineParams routineParamsWithSessions({
    String name = 'Routine With Sessions',
  }) =>
      RoutineParams(
        name: name,
        initialSessions: [
          addSessionParams(name: 'Session 1 - Push', items: [
            addExerciseSessionItemParams(
                name: 'Bench Press', targetSeriesCount: 4, weightValue: 80.0),
            addExerciseSessionItemParams(
                name: 'Overhead Press',
                goalUnit: WorkoutUnit.reps,
                goalQuantity: 8),
          ]),
          addSessionParams(name: 'Session 2 - Pull', items: [
            addExerciseSessionItemParams(name: 'Rows', weightValue: 70.0),
            addExerciseSessionItemParams(
                name: 'Pull Ups', goalUnit: WorkoutUnit.reps, goalQuantity: 5),
          ]),
        ],
      );

  static RoutineParams routineParamsWithEmptySessions({
    String name = 'Routine With Empty Sessions',
    String session1Name = 'Empty Session 1',
    String session2Name = 'Empty Session 2',
  }) =>
      RoutineParams(
        name: name,
        initialSessions: [
          addSessionParams(name: session1Name, items: []),
          addSessionParams(name: session2Name, items: []),
        ],
      );

  static RoutineParams routineParamsWithMixedItems(
          {required String routineName,
          required String sessionName,
          required String firsExerciseName,
          required String secondExerciseName,
          required int restDuration}) =>
      RoutineParams(
        name: routineName,
        initialSessions: [
          SessionParams(
            name: sessionName,
            items: [
              SessionItemParams.exercise(
                  params: DtoMother.exerciseParams(name: firsExerciseName)),
              SessionItemParams.rest(
                  params: DtoMother.restParams(duration: restDuration)),
              SessionItemParams.exercise(
                  params: DtoMother.exerciseParams(name: secondExerciseName)),
            ],
          ),
        ],
      );
}
