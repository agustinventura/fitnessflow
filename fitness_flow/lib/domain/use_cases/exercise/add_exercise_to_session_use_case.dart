import 'dart:core';

import 'package:fitness_flow/domain/entities/exercise.dart';
import 'package:fitness_flow/domain/entities/routine.dart';
import 'package:fitness_flow/domain/entities/session.dart';
import 'package:fpdart/fpdart.dart';
import 'package:uuid/uuid.dart';

import '../../../core/error/failure.dart';
import '../../entities/session_item.dart';
import '../../repositories/routine_repository.dart';
import '../../value_objects/exercise_id.dart';
import '../../value_objects/rest_time.dart';
import '../../value_objects/target_series.dart';
import '../../value_objects/weight.dart';
import '../../value_objects/workout_goal.dart';
import 'add_exercise_to_session_params.dart';

class AddExerciseToSessionUseCase {
  final RoutineRepository repository;
  final Uuid uuidGenerator;

  AddExerciseToSessionUseCase(this.repository, this.uuidGenerator);

  Future<Either<Failure, Routine>> call(
      AddExerciseToSessionParams params) async {
    final findResult = await repository.findById(params.routineId);

    return findResult.fold(
      (failure) {
        return Left(failure);
      },
      (routine) {
        return _addExerciseToRoutineSession(routine, params);
      },
    );
  }

  Either<Failure, Routine> _addExerciseToRoutineSession(
      Routine? routine, AddExerciseToSessionParams params) {
    if (routine == null) {
      return Left(const Failure.notFound('Routine not found'));
    }
    return _addExerciseToSession(routine, params);
  }

  Either<Failure, Routine> _addExerciseToSession(
      Routine routine, AddExerciseToSessionParams params) {
    final sessionIndex =
        routine.sessions.indexWhere((s) => s.id == params.sessionId);
    if (sessionIndex == -1) {
      return Left(const Failure.notFound('Session not found in routine'));
    }
    return _modifySession(routine, sessionIndex, params);
  }

  Either<Failure, Routine> _modifySession(
      Routine routine, int sessionIndex, AddExerciseToSessionParams params) {
    final targetSession = routine.sessions[sessionIndex];

    try {
      final newExercise = _buildExerciseFromParams(params);
      final updatedSession =
          _buildNewSessionWithNewExercise(targetSession, newExercise);
      final modifiedRoutine =
          _buildNewRoutineWithUpdatedSessions(routine, params, updatedSession);

      return Right(modifiedRoutine);
    } on AssertionError catch (e) {
      return Left(Failure.validation('Invalid exercise data: ${e.message}'));
    } catch (e) {
      return Left(Failure.unexpected(e.toString()));
    }
  }

  Routine _buildNewRoutineWithUpdatedSessions(Routine routine,
      AddExerciseToSessionParams params, Session updatedSession) {
    final updatedSessions = routine.sessions.map((session) {
      return session.id == params.sessionId ? updatedSession : session;
    }).toList(growable: false);

    final modifiedRoutine = routine.copyWith(sessions: updatedSessions);
    return modifiedRoutine;
  }

  Session _buildNewSessionWithNewExercise(
      Session targetSession, Exercise newExercise) {
    final newOrderItem = targetSession.items.length + 1;
    final newSessionItem =
        SessionItem.exercise(exercise: newExercise, order: newOrderItem);
    final updatedItems = List<SessionItem>.unmodifiable(
        [...targetSession.items, newSessionItem]);
    final updatedSession = targetSession.copyWith(items: updatedItems);
    return updatedSession;
  }

  Exercise _buildExerciseFromParams(AddExerciseToSessionParams params) {
    final newExerciseId = ExerciseId(uuidGenerator.v4());
    final exerciseParams = params.exerciseParams;
    final targetSeries = TargetSeries(count: exerciseParams.targetSeriesCount);
    final goal = WorkoutGoal(
        quantity: exerciseParams.goalQuantity, unit: exerciseParams.goalUnit);
    final weight = exerciseParams.weightValue != null
        ? Weight(value: exerciseParams.weightValue!)
        : null;
    final restTimeBetweenSeries =
        RestTime(durationInSeconds: exerciseParams.restTimeInSeconds);

    final newExercise = Exercise(
      id: newExerciseId,
      name: exerciseParams.name,
      targetSeries: targetSeries,
      goal: goal,
      weight: weight,
      restTime: restTimeBetweenSeries,
    );
    return newExercise;
  }
}
