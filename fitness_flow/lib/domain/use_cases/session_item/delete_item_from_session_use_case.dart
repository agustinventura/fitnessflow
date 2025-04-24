import 'package:fitness_flow/domain/entities/session.dart';
import 'package:fpdart/fpdart.dart';

import '../../../core/error/failure.dart';
import '../../entities/routine.dart';
import '../../entities/session_item.dart';
import '../../repositories/routine_repository.dart';
import 'dtos/delete_item_from_session_params.dart';

class DeleteItemFromSessionUseCase {
  final RoutineRepository repository;

  DeleteItemFromSessionUseCase(this.repository);

  Future<Either<Failure, Routine>> call(
      DeleteItemFromSessionParams params) async {
    final findResult = await repository.findById(params.routineId);

    return findResult.fold(
      (failure) {
        return Left(failure);
      },
      (routine) {
        if (routine == null) {
          return Left(const Failure.notFound('Routine not found'));
        }

        return _deleteItemFromSession(routine, params);
      },
    );
  }

  Either<Failure, Routine> _deleteItemFromSession(
      Routine routine, DeleteItemFromSessionParams params) {
    final sessionIndex =
        routine.sessions.indexWhere((s) => s.id == params.sessionId);
    if (sessionIndex == -1) {
      return Left(const Failure.notFound('Session not found in routine'));
    }
    return _deleteItemFromSessionItems(routine, sessionIndex, params);
  }

  Either<Failure, Routine> _deleteItemFromSessionItems(
      Routine routine, int sessionIndex, DeleteItemFromSessionParams params) {
    final targetSession = routine.sessions[sessionIndex];

    final itemIndex = targetSession.items
        .indexWhere((item) => item.order == params.itemOrder);

    if (itemIndex == -1) {
      return Left(Failure.notFound(
          'Item with order ${params.itemOrder} not found in session'));
    }

    try {
      return _updateRoutineDeletingItem(
          targetSession, itemIndex, routine, params);
    } catch (e) {
      return Left(Failure.unexpected(e.toString()));
    }
  }

  Right<Failure, Routine> _updateRoutineDeletingItem(Session targetSession,
      int itemIndex, Routine routine, DeleteItemFromSessionParams params) {
    final List<SessionItem> updatedItemsList = [];
    int currentNewOrder = 1;
    for (int i = 0; i < targetSession.items.length; i++) {
      if (i == itemIndex) continue;

      final currentItem = targetSession.items[i];
      if (currentItem is ExerciseSessionItem) {
        updatedItemsList.add(currentItem.copyWith(order: currentNewOrder++));
      } else if (currentItem is RestSessionItem) {
        updatedItemsList.add(currentItem.copyWith(order: currentNewOrder++));
      }
    }

    final updatedSession =
        targetSession.copyWith(items: List.unmodifiable(updatedItemsList));

    final updatedSessions = routine.sessions.map((session) {
      return session.id == params.sessionId ? updatedSession : session;
    }).toList(growable: false);
    final modifiedRoutine = routine.copyWith(sessions: updatedSessions);

    return Right(modifiedRoutine);
  }
}
