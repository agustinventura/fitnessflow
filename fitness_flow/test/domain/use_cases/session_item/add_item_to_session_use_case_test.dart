@GenerateNiceMocks([
  MockSpec<RoutineRepository>(),
  MockSpec<Uuid>(),
])
import 'package:fitness_flow/core/error/failure.dart';
import 'package:fitness_flow/domain/entities/routine.dart';
import 'package:fitness_flow/domain/entities/session_item.dart';
import 'package:fitness_flow/domain/repositories/routine_repository.dart';
import 'package:fitness_flow/domain/use_cases/session_item/add_item_to_session_use_case.dart';
import 'package:fitness_flow/domain/use_cases/session_item/dtos/add_item_to_session_params.dart';
import 'package:fitness_flow/domain/use_cases/session_item/dtos/session_item_params.dart';
import 'package:fitness_flow/domain/value_objects/exercise_id.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:uuid/uuid.dart';

import '../../entities/mother/entity_mother.dart';
import '../../value_objects/mother/value_object_mother.dart';
import '../mother/dto_mother.dart';
import 'add_item_to_session_use_case_test.mocks.dart';

void main() {
  setUpAll(() {
    provideDummy<Either<Failure, Routine?>>(Right(EntityMother.routine()));
    provideDummy<Either<Failure, Routine>>(Right(EntityMother.routine()));
  });

  late AddItemToSessionUseCase useCase;
  late MockRoutineRepository mockRoutineRepository;
  late MockUuid mockUuid;

  setUp(() {
    mockRoutineRepository = MockRoutineRepository();
    mockUuid = MockUuid();
    useCase = AddItemToSessionUseCase(mockRoutineRepository, mockUuid);
  });

  final tRoutineId = ValueObjectMother.routineId(value: 'r1');
  final tSessionId = ValueObjectMother.sessionId(value: 's1');
  final tExerciseDto = DtoMother.exerciseParams(name: 'New Squat');
  final tExerciseItemDto = SessionItemParams.exercise(params: tExerciseDto);
  final tRestDto = DtoMother.restParams(duration: 75);
  final tRestItemDto = SessionItemParams.rest(params: tRestDto);

  const tGeneratedExerciseUuid = 'new-exercise-uuid';
  final tNewExerciseId = ExerciseId(tGeneratedExerciseUuid);

  final tInitialSession = EntityMother.session(
      id: tSessionId, items: [EntityMother.sessionItemRest(order: 1)]);
  final tInitialRoutine =
      EntityMother.routine(id: tRoutineId, sessions: [tInitialSession]);

  const tRoutineNotFoundFailure = Failure.notFound('Routine not found');
  const tSessionNotFoundFailure =
      Failure.notFound('Session not found in routine');
  const tDatabaseFailure = Failure.database();

  group('Add Exercise Item', () {
    final tParams = AddItemToSessionParams(
        routineId: tRoutineId,
        sessionId: tSessionId,
        itemData: tExerciseItemDto);

    test(
      'should load routine, add exercise item, and return updated Routine on success',
      () async {
        when(mockRoutineRepository.findById(tRoutineId))
            .thenAnswer((_) async => Right(tInitialRoutine));
        when(mockUuid.v4()).thenReturn(tGeneratedExerciseUuid);

        final result = await useCase(tParams);

        expect(result.isRight(), isTrue);
        final updatedRoutine =
            result.getOrElse((_) => throw TestFailure('Should be Right'));
        verify(mockRoutineRepository.findById(tRoutineId));
        verify(mockUuid.v4()).called(1);
        verifyNoMoreInteractions(mockRoutineRepository);

        final modifiedSession =
            updatedRoutine.sessions.firstWhere((s) => s.id == tSessionId);
        expect(modifiedSession.items.length, 2);
        final newItem = modifiedSession.items.last;
        expect(newItem, isA<ExerciseSessionItem>());
        expect(newItem.order, 2);
        final exerciseItem = newItem as ExerciseSessionItem;
        expect(exerciseItem.exercise.id, tNewExerciseId);
        expect(exerciseItem.exercise.name, tExerciseDto.name);
      },
    );

    test(
      'should return ValidationFailure when Exercise VO validation fails',
      () async {
        final invalidExerciseDto =
            DtoMother.exerciseParams(targetSeriesCount: -1);
        final invalidParams = tParams.copyWith(
            itemData: SessionItemParams.exercise(params: invalidExerciseDto));
        when(mockRoutineRepository.findById(tRoutineId))
            .thenAnswer((_) async => Right(tInitialRoutine));
        when(mockUuid.v4()).thenReturn(tGeneratedExerciseUuid);

        final result = await useCase(invalidParams);

        expect(result.isLeft(), isTrue);
        result.fold(
          (failure) => expect(failure, isA<ValidationFailure>()),
          (_) => fail('Should have returned ValidationFailure'),
        );
        verify(mockRoutineRepository.findById(tRoutineId));
        verify(mockUuid.v4()).called(1);
        verifyNoMoreInteractions(mockRoutineRepository);
      },
    );
  });

  group('Add Rest Item', () {
    final tParams = AddItemToSessionParams(
        routineId: tRoutineId, sessionId: tSessionId, itemData: tRestItemDto);

    test(
      'should load routine, add rest item, and return updated Routine on success',
      () async {
        when(mockRoutineRepository.findById(tRoutineId))
            .thenAnswer((_) async => Right(tInitialRoutine));

        final result = await useCase(tParams);

        expect(result.isRight(), isTrue);
        final updatedRoutine =
            result.getOrElse((_) => throw TestFailure('Should be Right'));
        verify(mockRoutineRepository.findById(tRoutineId));
        verifyNever(mockUuid.v4());
        verifyNoMoreInteractions(mockRoutineRepository);

        final modifiedSession =
            updatedRoutine.sessions.firstWhere((s) => s.id == tSessionId);
        expect(modifiedSession.items.length, 2);
        final newItem = modifiedSession.items.last;
        expect(newItem, isA<RestSessionItem>());
        expect(newItem.order, 2);
        final restItem = newItem as RestSessionItem;
        expect(restItem.restTime.durationInSeconds, tRestDto.durationInSeconds);
      },
    );

    test(
      'should return ValidationFailure when Rest VO validation fails',
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
        verifyNever(mockUuid.v4());
        verifyNoMoreInteractions(mockRoutineRepository);
      },
    );
  });

  group('Common Failures', () {
    final tParams = AddItemToSessionParams(
        routineId: tRoutineId,
        sessionId: tSessionId,
        itemData: tExerciseItemDto);

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
  });
}
