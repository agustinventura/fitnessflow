import 'package:fitness_flow/domain/entities/session.dart';
import 'package:fitness_flow/domain/use_cases/exercise/update_exercise_in_session_params.dart';
import 'package:fpdart/fpdart.dart';

import '../../../core/error/failure.dart';
import '../../entities/exercise.dart';
import '../../entities/routine.dart';
import '../../entities/session_item.dart';
import '../../repositories/routine_repository.dart';
import '../../value_objects/rest_time.dart';
import '../../value_objects/target_series.dart';
import '../../value_objects/weight.dart';
import '../../value_objects/workout_goal.dart';

class UpdateExerciseInSessionUseCase {
  final RoutineRepository repository;

  UpdateExerciseInSessionUseCase(this.repository);

  Future<Either<Failure, Routine>> call(
      UpdateExerciseInSessionParams params) async {
    final findResult = await repository.findById(params.routineId);
    return findResult.fold(
      (failure) {
        return Left(failure);
      },
      (routine) {
        return _updateExerciseInRoutineSession(routine, params);
      },
    );
  }

  Either<Failure, Routine> _updateExerciseInRoutineSession(
      Routine? routine, UpdateExerciseInSessionParams params) {
    if (routine == null) {
      return Left(const Failure.notFound('Routine not found'));
    }

    return _modifyExerciseInSession(routine, params);
  }

  Either<Failure, Routine> _modifyExerciseInSession(
      Routine routine, UpdateExerciseInSessionParams params) {
    final sessionIndex =
        routine.sessions.indexWhere((s) => s.id == params.sessionId);
    if (sessionIndex == -1) {
      return Left(const Failure.notFound('Session not found in routine'));
    }
    return _modifySession(routine, sessionIndex, params);
  }

  Either<Failure, Routine> _modifySession(
      Routine routine, int sessionIndex, UpdateExerciseInSessionParams params) {
    final targetSession = routine.sessions[sessionIndex];

    final itemIndex = _getOriginalItemIndex(targetSession, params);

    if (itemIndex == -1) {
      return Left(const Failure.notFound('Exercise item not found in session'));
    }
    final originalItem = targetSession.items[itemIndex] as ExerciseSessionItem;
    final originalOrder = originalItem.order;

    try {
      final updatedExercise = _buildExerciseFromParams(params);
      final updatedSession = _buildNewSessionWithUpdatedExercise(
          updatedExercise, originalOrder, targetSession, itemIndex);
      final modifiedRoutine =
          _buildNewRoutineWithUpdatedSessions(routine, params, updatedSession);
      return Right(modifiedRoutine);
    } on AssertionError catch (e) {
      return Left(
          Failure.validation(e.message?.toString() ?? 'Validation failed'));
    } catch (e) {
      return Left(Failure.unexpected(e.toString()));
    }
  }

  Routine _buildNewRoutineWithUpdatedSessions(Routine routine,
      UpdateExerciseInSessionParams params, Session updatedSession) {
    final updatedSessions = routine.sessions.map((session) {
      return session.id == params.sessionId ? updatedSession : session;
    }).toList(growable: false);

    final modifiedRoutine = routine.copyWith(sessions: updatedSessions);
    return modifiedRoutine;
  }

  Session _buildNewSessionWithUpdatedExercise(Exercise updatedExercise,
      int originalOrder, Session targetSession, int itemIndex) {
    final updatedSessionItem =
        SessionItem.exercise(exercise: updatedExercise, order: originalOrder);

    final updatedItems = List<SessionItem>.from(targetSession.items);
    updatedItems[itemIndex] = updatedSessionItem;
    final updatedSession =
        targetSession.copyWith(items: List.unmodifiable(updatedItems));
    return updatedSession;
  }

  Exercise _buildExerciseFromParams(UpdateExerciseInSessionParams params) {
    final exerciseParams = params.newExerciseData;
    final targetSeries = TargetSeries(count: exerciseParams.targetSeriesCount);
    final goal = WorkoutGoal(
        quantity: exerciseParams.goalQuantity, unit: exerciseParams.goalUnit);
    final weight = exerciseParams.weightValue != null
        ? Weight(value: exerciseParams.weightValue!)
        : null;
    final restTimeBetweenSeries =
        RestTime(durationInSeconds: exerciseParams.restTimeInSeconds);

    final updatedExercise = Exercise(
      id: params.exerciseId,
      name: exerciseParams.name,
      targetSeries: targetSeries,
      goal: goal,
      weight: weight,
      restTime: restTimeBetweenSeries,
    );
    return updatedExercise;
  }

  int _getOriginalItemIndex(
      Session targetSession, UpdateExerciseInSessionParams params) {
    final itemIndex = targetSession.items.indexWhere((item) {
      if (item is ExerciseSessionItem) {
        return item.exercise.id == params.exerciseId;
      }
      return false;
    });
    return itemIndex;
  }
}
