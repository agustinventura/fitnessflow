import 'package:fitness_flow/core/error/failure.dart';
import 'package:fitness_flow/domain/entities/routine.dart';
import 'package:fitness_flow/domain/entities/session_item.dart';
import 'package:fitness_flow/domain/repositories/routine_repository.dart';
import 'package:fitness_flow/domain/use_cases/session_item/dtos/session_item_params.dart';
import 'package:fitness_flow/domain/use_cases/session_item/dtos/update_item_in_session_params.dart';
import 'package:fitness_flow/domain/use_cases/session_item/update_item_in_session_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../entities/mother/entity_mother.dart';
import '../../value_objects/mother/value_object_mother.dart';
import '../mother/dto_mother.dart';
@GenerateNiceMocks([MockSpec<RoutineRepository>()])
import 'update_item_in_session_use_case_test.mocks.dart';

void main() {
  setUpAll(() {
    provideDummy<Either<Failure, Routine?>>(Right(EntityMother.routine()));
    provideDummy<Either<Failure, Routine>>(Right(EntityMother.routine()));
  });

  late UpdateItemInSessionUseCase useCase;
  late MockRoutineRepository mockRoutineRepository;

  setUp(() {
    mockRoutineRepository = MockRoutineRepository();
    useCase = UpdateItemInSessionUseCase(mockRoutineRepository);
  });

  final tRoutineId = ValueObjectMother.routineId(value: 'r1');
  final tSessionId = ValueObjectMother.sessionId(value: 's1');
  final tInvalidOrder = 99;

  final tInitialExItem = EntityMother.sessionItemExercise(
      exercise: EntityMother.exercise(
          id: ValueObjectMother.exerciseId(value: 'ex1'), name: 'Old Squat'),
      order: 1);
  final tInitialRestItem = EntityMother.sessionItemRest(
      restTime: ValueObjectMother.restTime(durationInSeconds: 60), order: 2);
  final tInitialExItem2 = EntityMother.sessionItemExercise(
      exercise: EntityMother.exercise(
          id: ValueObjectMother.exerciseId(value: 'ex2'), name: 'Old Bench'),
      order: 3);

  final tInitialSession = EntityMother.session(
      id: tSessionId,
      items: [tInitialExItem, tInitialRestItem, tInitialExItem2]);
  final tInitialRoutine =
      EntityMother.routine(id: tRoutineId, sessions: [tInitialSession]);

  final tNewExerciseData =
      DtoMother.exerciseParams(name: 'Updated Squat', targetSeriesCount: 4);
  final tNewRestData = DtoMother.restParams(duration: 75);

  const tRoutineNotFoundFailure = Failure.notFound('Routine not found');
  const tSessionNotFoundFailure =
      Failure.notFound('Session not found in routine');
  final tOrderNotFoundFailure =
      Failure.notFound('Item with order $tInvalidOrder not found in session');
  const tDatabaseFailure = Failure.database();

  group('Update Exercise Item', () {
    const tOrderToUpdate = 1;
    final tParams = UpdateItemInSessionParams(
        routineId: tRoutineId,
        sessionId: tSessionId,
        itemOrder: tOrderToUpdate,
        itemData: SessionItemParams.exercise(params: tNewExerciseData));

    test(
      'should load routine, find item by order, update exercise, and return updated Routine',
      () async {
        when(mockRoutineRepository.findById(tRoutineId))
            .thenAnswer((_) async => Right(tInitialRoutine));

        final result = await useCase(tParams);

        expect(result.isRight(), isTrue);
        final updatedRoutine =
            result.getOrElse((_) => throw TestFailure('Should be Right'));
        verify(mockRoutineRepository.findById(tRoutineId));
        verifyNoMoreInteractions(mockRoutineRepository);

        final modifiedSession =
            updatedRoutine.sessions.firstWhere((s) => s.id == tSessionId);
        expect(modifiedSession.items.length, 3);

        final updatedItem = modifiedSession.items
            .firstWhere((item) => item.order == tOrderToUpdate);
        expect(updatedItem, isA<ExerciseSessionItem>());
        final updatedExercise = (updatedItem as ExerciseSessionItem).exercise;

        expect(updatedExercise.id,
            (tInitialExItem as ExerciseSessionItem).exercise.id);
        expect(updatedExercise.name, tNewExerciseData.name);
        expect(updatedExercise.targetSeries.count,
            tNewExerciseData.targetSeriesCount);

        expect(modifiedSession.items[1].order, 2);
        expect(modifiedSession.items[1], isA<RestSessionItem>());
        expect(modifiedSession.items[2].order, 3);
        expect(modifiedSession.items[2], isA<ExerciseSessionItem>());
      },
    );

    test(
      'should return ValidationFailure when Exercise VO validation fails during update',
      () async {
        final invalidExerciseDto =
            DtoMother.exerciseParams(targetSeriesCount: -1);
        final invalidParams = tParams.copyWith(
            itemData: SessionItemParams.exercise(params: invalidExerciseDto));
        when(mockRoutineRepository.findById(tRoutineId))
            .thenAnswer((_) async => Right(tInitialRoutine));

        final result = await useCase(invalidParams);

        expect(result.isLeft(), isTrue);
        result.fold(
          (failure) => expect(failure, isA<ValidationFailure>()),
          (_) => fail('Should have returned ValidationFailure'),
        );
        verify(mockRoutineRepository.findById(tRoutineId));
        verifyNoMoreInteractions(mockRoutineRepository);
      },
    );

    test(
      'should return Failure when trying to update a RestItem with Exercise data',
      () async {
        final paramsTryingToUpdateRest = UpdateItemInSessionParams(
            routineId: tRoutineId,
            sessionId: tSessionId,
            itemOrder: 2,
            itemData: SessionItemParams.exercise(params: tNewExerciseData));
        when(mockRoutineRepository.findById(tRoutineId))
            .thenAnswer((_) async => Right(tInitialRoutine));

        final result = await useCase(paramsTryingToUpdateRest);

        expect(result.isLeft(), isTrue);
        result.fold(
          (failure) => expect(failure, isA<Failure>()),
          (_) => fail('Should have returned a Failure'),
        );
        verify(mockRoutineRepository.findById(tRoutineId));
        verifyNoMoreInteractions(mockRoutineRepository);
      },
    );
  });

  group('Update Rest Item', () {
    const tOrderToUpdate = 2;
    final tParams = UpdateItemInSessionParams(
        routineId: tRoutineId,
        sessionId: tSessionId,
        itemOrder: tOrderToUpdate,
        itemData: SessionItemParams.rest(params: tNewRestData));

    test(
      'should load routine, find item by order, update rest time, and return updated Routine',
      () async {
        when(mockRoutineRepository.findById(tRoutineId))
            .thenAnswer((_) async => Right(tInitialRoutine));

        final result = await useCase(tParams);

        expect(result.isRight(), isTrue);
        final updatedRoutine =
            result.getOrElse((_) => throw TestFailure('Should be Right'));
        verify(mockRoutineRepository.findById(tRoutineId));
        verifyNoMoreInteractions(mockRoutineRepository);

        final modifiedSession =
            updatedRoutine.sessions.firstWhere((s) => s.id == tSessionId);
        expect(modifiedSession.items.length, 3);

        final updatedItem = modifiedSession.items
            .firstWhere((item) => item.order == tOrderToUpdate);
        expect(updatedItem, isA<RestSessionItem>());
        final updatedRestItem = updatedItem as RestSessionItem;

        expect(updatedRestItem.order, tOrderToUpdate);
        expect(updatedRestItem.restTime.durationInSeconds,
            tNewRestData.durationInSeconds);

        expect(modifiedSession.items[0], equals(tInitialSession.items[0]));
        expect(modifiedSession.items[2], equals(tInitialSession.items[2]));
      },
    );

    test(
      'should return ValidationFailure when RestTime VO validation fails during update',
      () async {
        final invalidRestDto = DtoMother.restParams(duration: -1);
        final invalidParams = tParams.copyWith(
            itemData: SessionItemParams.rest(params: invalidRestDto));
        when(mockRoutineRepository.findById(tRoutineId))
            .thenAnswer((_) async => Right(tInitialRoutine));

        final result = await useCase(invalidParams);

        expect(result.isLeft(), isTrue);
        result.fold(
          (failure) => expect(failure, isA<ValidationFailure>()),
          (_) => fail('Should have returned ValidationFailure'),
        );
        verify(mockRoutineRepository.findById(tRoutineId));
        verifyNoMoreInteractions(mockRoutineRepository);
      },
    );

    test(
      'should return Failure when trying to update an ExerciseItem with Rest data',
      () async {
        final paramsTryingToUpdateEx = UpdateItemInSessionParams(
            routineId: tRoutineId,
            sessionId: tSessionId,
            itemOrder: 1,
            itemData: SessionItemParams.rest(params: tNewRestData));
        when(mockRoutineRepository.findById(tRoutineId))
            .thenAnswer((_) async => Right(tInitialRoutine));

        final result = await useCase(paramsTryingToUpdateEx);

        expect(result.isLeft(), isTrue);
        result.fold(
          (failure) => expect(failure, isA<Failure>()),
          (_) => fail('Should have returned a Failure'),
        );
        verify(mockRoutineRepository.findById(tRoutineId));
        verifyNoMoreInteractions(mockRoutineRepository);
      },
    );
  });

  group('Common Failures', () {
    final tParams = UpdateItemInSessionParams(
        routineId: tRoutineId,
        sessionId: tSessionId,
        itemOrder: 1,
        itemData:
            SessionItemParams.exercise(params: DtoMother.exerciseParams()));

    test('should return NotFoundFailure when routine is not found', () async {
      when(mockRoutineRepository.findById(tRoutineId))
          .thenAnswer((_) async => const Right(null));

      final result = await useCase(tParams);

      expect(result, equals(const Left(tRoutineNotFoundFailure)));
      verify(mockRoutineRepository.findById(tRoutineId));
      verifyNoMoreInteractions(mockRoutineRepository);
    });

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
    });

    test(
      'should return NotFoundFailure when item with specified order is not found within the session',
      () async {
        when(mockRoutineRepository.findById(tRoutineId))
            .thenAnswer((_) async => Right(tInitialRoutine));
        final paramsWithWrongOrder = tParams.copyWith(itemOrder: 99);

        final result = await useCase(paramsWithWrongOrder);

        expect(result, equals(Left(tOrderNotFoundFailure)));
        verify(mockRoutineRepository.findById(tRoutineId));
        verifyNoMoreInteractions(mockRoutineRepository);
      },
    );

    test('should return Failure when repository.findById fails', () async {
      when(mockRoutineRepository.findById(tRoutineId))
          .thenAnswer((_) async => const Left(tDatabaseFailure));

      final result = await useCase(tParams);

      expect(result, equals(const Left(tDatabaseFailure)));
      verify(mockRoutineRepository.findById(tRoutineId));
      verifyNoMoreInteractions(mockRoutineRepository);
    });
  });
}
