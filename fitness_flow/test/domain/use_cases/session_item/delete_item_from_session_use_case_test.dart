import 'package:fitness_flow/core/error/failure.dart';
import 'package:fitness_flow/domain/entities/routine.dart';
import 'package:fitness_flow/domain/entities/session_item.dart';
import 'package:fitness_flow/domain/repositories/routine_repository.dart';
import 'package:fitness_flow/domain/use_cases/session_item/delete_item_from_session_use_case.dart';
import 'package:fitness_flow/domain/use_cases/session_item/dtos/delete_item_from_session_params.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../entities/mother/entity_mother.dart';
import '../../value_objects/mother/value_object_mother.dart';
@GenerateNiceMocks([MockSpec<RoutineRepository>()])
import 'delete_item_from_session_use_case_test.mocks.dart';

void main() {
  setUpAll(() {
    provideDummy<Either<Failure, Routine?>>(Right(EntityMother.routine()));
    provideDummy<Either<Failure, Routine>>(Right(EntityMother.routine()));
  });

  late DeleteItemFromSessionUseCase useCase;
  late MockRoutineRepository mockRoutineRepository;

  setUp(() {
    mockRoutineRepository = MockRoutineRepository();
    useCase = DeleteItemFromSessionUseCase(mockRoutineRepository);
  });

  final tRoutineId = ValueObjectMother.routineId(value: 'r1');
  final tSessionId = ValueObjectMother.sessionId(value: 's1');
  const tOrderToDelete = 2;
  const tInvalidOrder = 99;

  final tItem1 = EntityMother.sessionItemExercise(
      order: 1,
      exercise: EntityMother.exercise(
          id: ValueObjectMother.exerciseId(value: 'ex1')));
  final tItem2 = EntityMother.sessionItemRest(
      order: 2, restTime: ValueObjectMother.restTime(durationInSeconds: 60));
  final tItem3 = EntityMother.sessionItemExercise(
      order: 3,
      exercise: EntityMother.exercise(
          id: ValueObjectMother.exerciseId(value: 'ex2')));
  final tInitialSession =
      EntityMother.session(id: tSessionId, items: [tItem1, tItem2, tItem3]);
  final tInitialRoutine =
      EntityMother.routine(id: tRoutineId, sessions: [tInitialSession]);

  const tRoutineNotFoundFailure = Failure.notFound('Routine not found');
  const tSessionNotFoundFailure =
      Failure.notFound('Session not found in routine');
  const tItemNotFoundFailure =
      Failure.notFound('Item with order $tInvalidOrder not found in session');
  const tDatabaseFailure = Failure.database();

  final tParams = DeleteItemFromSessionParams(
      routineId: tRoutineId, sessionId: tSessionId, itemOrder: tOrderToDelete);

  test(
    'should load routine, remove item by order, reorder remaining items, and return updated Routine on success',
    () async {
      when(mockRoutineRepository.findById(tRoutineId))
          .thenAnswer((_) async => Right(tInitialRoutine));

      final result = await useCase(tParams);

      expect(result.isRight(), isTrue);
      final updatedRoutine =
          result.getOrElse((_) => throw TestFailure('Should be Right'));

      verify(mockRoutineRepository.findById(tRoutineId));
      verifyNoMoreInteractions(mockRoutineRepository);

      expect(updatedRoutine.id, tRoutineId);
      expect(updatedRoutine.sessions.length, 1);
      final modifiedSession =
          updatedRoutine.sessions.firstWhere((s) => s.id == tSessionId);

      expect(modifiedSession.items.length, 2);
      expect(modifiedSession.items.any((item) => item == tItem2), isFalse);
      expect(modifiedSession.items[0].order, 1);
      expect(modifiedSession.items[0], isA<ExerciseSessionItem>());
      expect((modifiedSession.items[0] as ExerciseSessionItem).exercise.id,
          equals((tItem1 as ExerciseSessionItem).exercise.id));

      expect(modifiedSession.items[1].order, 2);
      expect(modifiedSession.items[1], isA<ExerciseSessionItem>());
      expect((modifiedSession.items[1] as ExerciseSessionItem).exercise.id,
          equals((tItem3 as ExerciseSessionItem).exercise.id));
    },
  );

  test(
    'should return NotFoundFailure when routine is not found',
    () async {
      when(mockRoutineRepository.findById(tRoutineId))
          .thenAnswer((_) async => const Right(null));

      final result = await useCase(tParams);

      expect(result, equals(const Left(tRoutineNotFoundFailure)));
      verify(mockRoutineRepository.findById(tRoutineId));
      verifyNoMoreInteractions(mockRoutineRepository);
    },
  );

  test(
    'should return NotFoundFailure when session is not found within the routine',
    () async {
      final routineWithDifferentSession = EntityMother.routine(
          id: tRoutineId,
          sessions: [
            EntityMother.session(
                id: ValueObjectMother.sessionId(value: 'other-session-id'))
          ]);
      when(mockRoutineRepository.findById(tRoutineId))
          .thenAnswer((_) async => Right(routineWithDifferentSession));

      final result = await useCase(tParams);

      expect(result, equals(const Left(tSessionNotFoundFailure)));
      verify(mockRoutineRepository.findById(tRoutineId));
      verifyNoMoreInteractions(mockRoutineRepository);
    },
  );

  test(
    'should return NotFoundFailure when item with specified order is not found within the session',
    () async {
      when(mockRoutineRepository.findById(tRoutineId))
          .thenAnswer((_) async => Right(tInitialRoutine));
      final paramsWithWrongOrder = tParams.copyWith(itemOrder: tInvalidOrder);

      final result = await useCase(paramsWithWrongOrder);

      expect(result, equals(const Left(tItemNotFoundFailure)));
      verify(mockRoutineRepository.findById(tRoutineId));
      verifyNoMoreInteractions(mockRoutineRepository);
    },
  );

  test(
    'should return Failure when repository.findById fails',
    () async {
      when(mockRoutineRepository.findById(tRoutineId))
          .thenAnswer((_) async => const Left(tDatabaseFailure));

      final result = await useCase(tParams);

      expect(result, equals(const Left(tDatabaseFailure)));
      verify(mockRoutineRepository.findById(tRoutineId));
      verifyNoMoreInteractions(mockRoutineRepository);
    },
  );
}
