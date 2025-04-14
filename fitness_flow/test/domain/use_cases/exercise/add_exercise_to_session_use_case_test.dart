import 'package:fitness_flow/core/error/failure.dart';
import 'package:fitness_flow/domain/entities/routine.dart';
import 'package:fitness_flow/domain/entities/session_item.dart';
import 'package:fitness_flow/domain/repositories/routine_repository.dart';
import 'package:fitness_flow/domain/use_cases/exercise/add_exercise_to_session_params.dart';
import 'package:fitness_flow/domain/use_cases/exercise/add_exercise_to_session_use_case.dart';
import 'package:fitness_flow/domain/value_objects/exercise_id.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:uuid/uuid.dart';

import '../../entities/mother/entity_mother.dart';
import '../../value_objects/mother/value_object_mother.dart';
import '../mother/dto_mother.dart';
@GenerateNiceMocks([
  MockSpec<RoutineRepository>(),
  MockSpec<Uuid>(),
])
import 'add_exercise_to_session_use_case_test.mocks.dart';

void main() {
  setUpAll(() {
    provideDummy<Either<Failure, Routine?>>(Right(EntityMother.routine()));
    provideDummy<Either<Failure, Routine>>(Right(EntityMother.routine()));
  });

  late AddExerciseToSessionUseCase useCase;
  late MockRoutineRepository mockRoutineRepository;
  late MockUuid mockUuid;

  setUp(() {
    mockRoutineRepository = MockRoutineRepository();
    mockUuid = MockUuid();
    useCase = AddExerciseToSessionUseCase(mockRoutineRepository, mockUuid);
  });

  final tRoutineId = ValueObjectMother.routineId(value: 'r1');
  final tSessionId = ValueObjectMother.sessionId(value: 's1');
  final tNewExerciseParams = DtoMother.addExerciseParams(name: 'New Leg Curl');
  const tGeneratedExerciseUuid = 'new-exercise-uuid';
  final tNewExerciseId = ExerciseId(tGeneratedExerciseUuid);

  final tInitialSession = EntityMother.session(id: tSessionId, items: [
    EntityMother.sessionItemExercise(
        order: 1,
        exercise: EntityMother.exercise(id: ValueObjectMother.exerciseId()))
  ]);
  final tInitialRoutine =
      EntityMother.routine(id: tRoutineId, sessions: [tInitialSession]);

  const tRoutineNotFoundFailure = Failure.notFound('Routine not found');
  const tSessionNotFoundFailure =
      Failure.notFound('Session not found in routine');
  const tDatabaseFailure = Failure.database();

  final tParams = AddExerciseToSessionParams(
      routineId: tRoutineId,
      sessionId: tSessionId,
      exerciseParams: tNewExerciseParams);

  final tInvalidExerciseParamsDto =
      DtoMother.addExerciseParams(targetSeriesCount: -1);
  final tInvalidParams = AddExerciseToSessionParams(
      routineId: tRoutineId,
      sessionId: tSessionId,
      exerciseParams: tInvalidExerciseParamsDto);

  test(
    'should load routine, convert dto, add exercise item, and return updated Routine on success',
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
      verifyNoMoreInteractions(mockUuid);

      expect(updatedRoutine.id, tRoutineId);
      expect(updatedRoutine.sessions.length, 1);
      final modifiedSession =
          updatedRoutine.sessions.firstWhere((s) => s.id == tSessionId);
      expect(modifiedSession.items.length, 2);

      final newItem = modifiedSession.items.last;
      expect(newItem, isA<ExerciseSessionItem>());
      expect(newItem.order, 2);
      final newExerciseItem = newItem as ExerciseSessionItem;
      expect(newExerciseItem.exercise.id, tNewExerciseId);
      expect(newExerciseItem.exercise.name, tNewExerciseParams.name);
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
      verifyNever(mockUuid.v4());
      verifyNoMoreInteractions(mockRoutineRepository);
    },
  );

  test(
    'should return NotFoundFailure when session is not found within the routine',
    () async {
      final wrongSessionId = ValueObjectMother.sessionId(value: 's-wrong');
      final paramsWithWrongSession =
          tParams.copyWith(sessionId: wrongSessionId);
      when(mockRoutineRepository.findById(tRoutineId))
          .thenAnswer((_) async => Right(tInitialRoutine));

      final result = await useCase(paramsWithWrongSession);

      expect(result, equals(const Left(tSessionNotFoundFailure)));
      verify(mockRoutineRepository.findById(tRoutineId));
      verifyNever(mockUuid.v4());
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
      verifyNever(mockUuid.v4());
      verifyNoMoreInteractions(mockRoutineRepository);
    },
  );

  test(
    'should return Failure when creating Value Objects from DTO fails',
    () async {
      when(mockRoutineRepository.findById(tRoutineId))
          .thenAnswer((_) async => Right(tInitialRoutine));
      when(mockUuid.v4()).thenReturn(tGeneratedExerciseUuid);

      final result = await useCase(tInvalidParams);

      expect(result.isLeft(), isTrue);
      result.fold(
        (failure) => expect(failure, isA<Failure>()),
        (_) => fail('Should have returned a Failure'),
      );
      verify(mockRoutineRepository.findById(tRoutineId));
      verifyNoMoreInteractions(mockRoutineRepository);
    },
  );
}
