import 'package:fitness_flow/domain/use_cases/routine/add_routine_params.dart';
import 'package:fitness_flow/domain/use_cases/session/add_session_params.dart';
import 'package:fitness_flow/domain/use_cases/session_item/add_exercise_params.dart';
import 'package:fitness_flow/domain/use_cases/session_item/add_rest_params.dart';
import 'package:fitness_flow/domain/use_cases/session_item/add_session_item_params.dart';
import 'package:fitness_flow/domain/value_objects/workout_unit.dart';

class DtoMother {
  static AddExerciseParams addExerciseParams({
    String name = 'Default Test Exercise',
    int targetSeriesCount = 3,
    int goalQuantity = 10,
    WorkoutUnit goalUnit = WorkoutUnit.reps,
    double? weightValue,
    int restTimeInSeconds = 60,
  }) =>
      AddExerciseParams(
        name: name,
        targetSeriesCount: targetSeriesCount,
        goalQuantity: goalQuantity,
        goalUnit: goalUnit,
        weightValue: weightValue,
        restTimeInSeconds: restTimeInSeconds,
      );

  static AddRestParams addRestParams({required int duration}) =>
      AddRestParams(durationInSeconds: duration);

  static AddSessionItemParams addExerciseSessionItemParams({
    String name = 'Default Test Exercise',
    int targetSeriesCount = 3,
    int goalQuantity = 10,
    WorkoutUnit goalUnit = WorkoutUnit.reps,
    double? weightValue,
    int restTimeInSeconds = 60,
  }) =>
      AddSessionItemParams.exercise(
          params: addExerciseParams(
              name: name,
              targetSeriesCount: targetSeriesCount,
              goalQuantity: goalQuantity,
              goalUnit: goalUnit,
              weightValue: weightValue,
              restTimeInSeconds: restTimeInSeconds));

  static AddSessionParams addSessionParams({
    String name = 'Default Test Session',
    List<AddSessionItemParams>? items,
  }) =>
      AddSessionParams(
        name: name,
        items: items ?? [addExerciseSessionItemParams()],
      );

  static AddRoutineParams addRoutineParams({
    String name = 'Default Test Routine',
    List<AddSessionParams>? initialSessions,
  }) =>
      AddRoutineParams(
        name: name,
        initialSessions: initialSessions ?? [addSessionParams()],
      );

  static AddRoutineParams addRoutineParamsEmpty({
    String name = 'Empty Test Routine',
  }) =>
      AddRoutineParams(
        name: name,
        initialSessions: [],
      );

  static AddRoutineParams addRoutineParamsWithSessions({
    String name = 'Routine With Sessions',
  }) =>
      AddRoutineParams(
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

  static AddRoutineParams addRoutineParamsWithEmptySessions({
    String name = 'Routine With Empty Sessions',
    String session1Name = 'Empty Session 1',
    String session2Name = 'Empty Session 2',
  }) =>
      AddRoutineParams(
        name: name,
        initialSessions: [
          addSessionParams(name: session1Name, items: []),
          addSessionParams(name: session2Name, items: []),
        ],
      );

  static AddRoutineParams addRoutineParamsWithMixedItems(
          {required String routineName,
          required String sessionName,
          required String firsExerciseName,
          required String secondExerciseName,
          required int restDuration}) =>
      AddRoutineParams(
        name: routineName,
        initialSessions: [
          AddSessionParams(
            name: sessionName,
            items: [
              AddSessionItemParams.exercise(
                  params: DtoMother.addExerciseParams(name: firsExerciseName)),
              AddSessionItemParams.rest(
                  params: DtoMother.addRestParams(duration: restDuration)),
              AddSessionItemParams.exercise(
                  params:
                      DtoMother.addExerciseParams(name: secondExerciseName)),
            ],
          ),
        ],
      );
}
