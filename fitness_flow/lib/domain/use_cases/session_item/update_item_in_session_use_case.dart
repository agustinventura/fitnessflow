import 'package:fitness_flow/domain/entities/session.dart';
import 'package:fitness_flow/domain/use_cases/exercise/dtos/exercise_params.dart';
import 'package:fitness_flow/domain/use_cases/rest/dtos/rest_params.dart';
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
import 'dtos/session_item_params.dart';
import 'dtos/update_item_in_session_params.dart';

class UpdateItemInSessionUseCase {
  final RoutineRepository repository;

  UpdateItemInSessionUseCase(this.repository);

  Future<Either<Failure, Routine>> call(
      UpdateItemInSessionParams params) async {
    final findResult = await repository.findById(params.routineId);

    return findResult.fold(
      (failure) {
        return Left(failure);
      },
      (routine) {
        if (routine == null) {
          return Left(const Failure.notFound('Routine not found'));
        }
        return _updateItemInSession(routine, params);
      },
    );
  }

  Either<Failure, Routine> _updateItemInSession(
      Routine routine, UpdateItemInSessionParams params) {
    final sessionIndex =
        routine.sessions.indexWhere((s) => s.id == params.sessionId);
    if (sessionIndex == -1) {
      return Left(const Failure.notFound('Session not found in routine'));
    }
    return _updateItemInSessionItems(routine, sessionIndex, params);
  }

  Either<Failure, Routine> _updateItemInSessionItems(
      Routine routine, int sessionIndex, UpdateItemInSessionParams params) {
    final targetSession = routine.sessions[sessionIndex];
    final itemIndex = targetSession.items
        .indexWhere((item) => item.order == params.itemOrder);

    if (itemIndex == -1) {
      return Left(Failure.notFound(
          'Item with order ${params.itemOrder} not found in session'));
    }
    final originalItem = targetSession.items[itemIndex];

    try {
      Routine modifiedRoutine = _updateRoutineWithItem(
          params, originalItem, targetSession, itemIndex, routine);

      return Right(modifiedRoutine);
    } on AssertionError catch (e) {
      return Left(
          Failure.validation(e.message?.toString() ?? 'Validation failed'));
    } on Exception catch (e) {
      return Left(Failure.validation(e.toString()));
    } catch (e) {
      return Left(Failure.unexpected(e.toString()));
    }
  }

  Routine _updateRoutineWithItem(
      UpdateItemInSessionParams params,
      SessionItem originalItem,
      Session targetSession,
      int itemIndex,
      Routine routine) {
    final SessionItem updatedSessionItem = switch (params.itemData) {
      ExerciseSessionItemParams(:final params) =>
        _buildExerciseSessionItem(originalItem, params),
      RestSessionItemParams(:final params) =>
        _buildRestSessionItem(originalItem, params),
      _ => throw ArgumentError('Invalid item type')
    };

    final updatedItems = List<SessionItem>.from(targetSession.items);
    updatedItems[itemIndex] = updatedSessionItem;
    final updatedSession =
        targetSession.copyWith(items: List.unmodifiable(updatedItems));

    final updatedSessions = routine.sessions.map((session) {
      return session.id == params.sessionId ? updatedSession : session;
    }).toList(growable: false);

    final modifiedRoutine = routine.copyWith(sessions: updatedSessions);
    return modifiedRoutine;
  }

  SessionItem _buildRestSessionItem(
      SessionItem originalItem, RestParams params) {
    if (originalItem is! RestSessionItem) {
      throw Exception(
          'Type mismatch: Trying to update a non-rest item with rest data.');
    }
    final updatedRestTime =
        RestTime(durationInSeconds: params.durationInSeconds);
    return SessionItem.rest(
        restTime: updatedRestTime, order: originalItem.order);
  }

  SessionItem _buildExerciseSessionItem(
      SessionItem originalItem, ExerciseParams params) {
    if (originalItem is! ExerciseSessionItem) {
      throw Exception(
          'Type mismatch: Trying to update a non-exercise item with exercise data.');
    }
    final updatedExercise = Exercise(
      id: originalItem.exercise.id,
      name: params.name,
      targetSeries: TargetSeries(count: params.targetSeriesCount),
      goal: WorkoutGoal(quantity: params.goalQuantity, unit: params.goalUnit),
      weight: params.weightValue != null
          ? Weight(value: params.weightValue!)
          : null,
      restTime: RestTime(durationInSeconds: params.restTimeInSeconds),
    );
    return SessionItem.exercise(
        exercise: updatedExercise, order: originalItem.order);
  }
}
