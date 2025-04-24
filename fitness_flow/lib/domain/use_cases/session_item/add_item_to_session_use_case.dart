import 'package:fitness_flow/domain/entities/session.dart';
import 'package:fitness_flow/domain/use_cases/exercise/dtos/exercise_params.dart';
import 'package:fitness_flow/domain/use_cases/rest/dtos/rest_params.dart';
import 'package:fpdart/fpdart.dart';
import 'package:uuid/uuid.dart';

import '../../../core/error/failure.dart';
import '../../entities/exercise.dart';
import '../../entities/routine.dart';
import '../../entities/session_item.dart';
import '../../repositories/routine_repository.dart';
import '../../value_objects/exercise_id.dart';
import '../../value_objects/rest_time.dart';
import '../../value_objects/target_series.dart';
import '../../value_objects/weight.dart';
import '../../value_objects/workout_goal.dart';
import 'dtos/add_item_to_session_params.dart';
import 'dtos/session_item_params.dart';

class AddItemToSessionUseCase {
  final RoutineRepository repository;
  final Uuid uuidGenerator;

  AddItemToSessionUseCase(this.repository, this.uuidGenerator);

  Future<Either<Failure, Routine>> call(AddItemToSessionParams params) async {
    final findResult = await repository.findById(params.routineId);

    return findResult.fold(
      (failure) {
        return Left(failure);
      },
      (routine) {
        if (routine == null) {
          return Left(const Failure.notFound('Routine not found'));
        }

        return _addItemToSession(routine, params);
      },
    );
  }

  Either<Failure, Routine> _addItemToSession(
      Routine routine, AddItemToSessionParams params) {
    final sessionIndex =
        routine.sessions.indexWhere((s) => s.id == params.sessionId);
    if (sessionIndex == -1) {
      return Left(const Failure.notFound('Session not found in routine'));
    }
    final targetSession = routine.sessions[sessionIndex];

    try {
      return _addItemToSessionItems(targetSession, params, routine);
    } on AssertionError catch (e) {
      return Left(
          Failure.validation(e.message?.toString() ?? 'Validation failed'));
    } catch (e) {
      return Left(Failure.unexpected(e.toString()));
    }
  }

  Right<Failure, Routine> _addItemToSessionItems(
      Session targetSession, AddItemToSessionParams params, Routine routine) {
    final newOrderItem = targetSession.items.length + 1;

    final SessionItem newSessionItem = switch (params.itemData) {
      ExerciseSessionItemParams(:final params) =>
        _buildExerciseSessionItem(params, newOrderItem),
      RestSessionItemParams(:final params) =>
        _buildRestSessionItem(params, newOrderItem),
      _ => throw ArgumentError('Invalid item type')
    };

    Routine modifiedRoutine =
        _updateRoutineWithItem(targetSession, newSessionItem, routine, params);

    return Right(modifiedRoutine);
  }

  Routine _updateRoutineWithItem(
      Session targetSession,
      SessionItem newSessionItem,
      Routine routine,
      AddItemToSessionParams params) {
    final updatedItems = List<SessionItem>.unmodifiable(
        [...targetSession.items, newSessionItem]);
    final updatedSession = targetSession.copyWith(items: updatedItems);
    final updatedSessions = routine.sessions.map((session) {
      return session.id == params.sessionId ? updatedSession : session;
    }).toList(growable: false);
    final modifiedRoutine = routine.copyWith(sessions: updatedSessions);
    return modifiedRoutine;
  }

  SessionItem _buildRestSessionItem(RestParams params, int newOrderItem) {
    return SessionItem.rest(
      restTime: RestTime(durationInSeconds: params.durationInSeconds),
      order: newOrderItem,
    );
  }

  SessionItem _buildExerciseSessionItem(
      ExerciseParams params, int newOrderItem) {
    return SessionItem.exercise(
      exercise: Exercise(
        id: ExerciseId(uuidGenerator.v4()),
        name: params.name,
        targetSeries: TargetSeries(count: params.targetSeriesCount),
        goal: WorkoutGoal(quantity: params.goalQuantity, unit: params.goalUnit),
        weight: params.weightValue != null
            ? Weight(value: params.weightValue!)
            : null,
        restTime: RestTime(durationInSeconds: params.restTimeInSeconds),
      ),
      order: newOrderItem,
    );
  }
}
