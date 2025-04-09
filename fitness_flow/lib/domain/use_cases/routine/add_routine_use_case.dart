import 'package:fitness_flow/domain/use_cases/session/add_session_params.dart';
import 'package:fpdart/fpdart.dart';
import 'package:uuid/uuid.dart';

import '../../../core/error/failure.dart';
import '../../entities/exercise.dart';
import '../../entities/routine.dart';
import '../../entities/session.dart';
import '../../entities/session_item.dart';
import '../../repositories/routine_repository.dart';
import '../../value_objects/exercise_id.dart';
import '../../value_objects/rest_time.dart';
import '../../value_objects/routine_id.dart';
import '../../value_objects/session_id.dart';
import '../../value_objects/target_series.dart';
import '../../value_objects/weight.dart';
import '../../value_objects/workout_goal.dart';
import '../session_item/add_session_item_params.dart';
import 'add_routine_params.dart';

class AddRoutineUseCase {
  final RoutineRepository repository;
  final Uuid uuidGenerator;

  AddRoutineUseCase(this.repository, this.uuidGenerator);

  Future<Either<Failure, Unit>> call(AddRoutineParams params) async {
    try {
      final newRoutineId = RoutineId(uuidGenerator.v4());

      final List<Session> sessions = _createSessionsFromParams(params);

      final newRoutine = Routine(
        id: newRoutineId,
        name: params.name,
        sessions: List.unmodifiable(sessions),
      );

      return await repository.save(newRoutine);
    } on ArgumentError catch (e) {
      return Left(
          Failure.unexpected('Invalid data during creation: ${e.message}'));
    } catch (e) {
      return Left(Failure.unexpected(e.toString()));
    }
  }

  List<Session> _createSessionsFromParams(AddRoutineParams params) {
    final List<Session> sessions = [];
    if (params.initialSessions != null) {
      int sessionOrder = 1;
      for (final sessionParam in params.initialSessions!) {
        final newSessionId = SessionId(uuidGenerator.v4());
        List<SessionItem> sessionItems =
            _createSessionItemsFromParams(sessionParam);
        final newSession = Session(
          id: newSessionId,
          name: sessionParam.name,
          items: List.unmodifiable(sessionItems),
          order: sessionOrder++,
        );
        sessions.add(newSession);
      }
    }
    return sessions;
  }

  List<SessionItem> _createSessionItemsFromParams(
      AddSessionParams sessionParam) {
    final List<SessionItem> sessionItems = [];
    int itemOrder = 1;
    for (final itemParam in sessionParam.items) {
      final int currentOrder = itemOrder;
      itemOrder++;

      final SessionItem sessionItem = switch (itemParam) {
        ExerciseSessionItemParams(:final params) => SessionItem.exercise(
            exercise: Exercise(
              id: ExerciseId(uuidGenerator.v4()),
              name: params.name,
              targetSeries: TargetSeries(count: params.targetSeriesCount),
              goal: WorkoutGoal(
                  quantity: params.goalQuantity, unit: params.goalUnit),
              weight: params.weightValue != null
                  ? Weight(value: params.weightValue!)
                  : null,
              restTime: RestTime(durationInSeconds: params.restTimeInSeconds),
            ),
            order: currentOrder,
          ),

        // Caso 2: Descanso. Devuelve directamente SessionItem.rest
        RestSessionItemParams(:final params) => SessionItem.rest(
            restTime: RestTime(durationInSeconds: params.durationInSeconds),
            order: currentOrder, // Usa el orden capturado
          ),
        _ => throw ArgumentError(
            'Invalid item type') // Fin de la expresión para este caso
      }; // Fin del switch expression
      sessionItems.add(sessionItem);
    }
    return sessionItems;
  }
}
