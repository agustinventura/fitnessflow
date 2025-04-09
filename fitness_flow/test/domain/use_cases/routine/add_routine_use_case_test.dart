import 'package:fitness_flow/core/error/failure.dart';
import 'package:fitness_flow/domain/entities/routine.dart';
import 'package:fitness_flow/domain/entities/session_item.dart';
import 'package:fitness_flow/domain/repositories/routine_repository.dart';
import 'package:fitness_flow/domain/use_cases/routine/add_routine_use_case.dart';
import 'package:fitness_flow/domain/value_objects/exercise_id.dart';
import 'package:fitness_flow/domain/value_objects/routine_id.dart';
import 'package:fitness_flow/domain/value_objects/session_id.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:uuid/uuid.dart';

import '../mother/dto_mother.dart';
@GenerateNiceMocks([
  MockSpec<RoutineRepository>(),
  MockSpec<Uuid>(),
])
import 'add_routine_use_case_test.mocks.dart';

void main() {
  setUpAll(() {
    provideDummy<Either<Failure, Unit>>(const Right(unit));
  });

  late AddRoutineUseCase useCase;
  late MockRoutineRepository mockRoutineRepository;
  late MockUuid mockUuid;

  setUp(() {
    mockRoutineRepository = MockRoutineRepository();
    mockUuid = MockUuid();
    useCase = AddRoutineUseCase(mockRoutineRepository, mockUuid);
  });

  const tRoutineName = 'Routine With Mixed Items';
  const tSession1Name = 'Workout A';
  const tEx1Name = 'Squats';
  const tRest1Duration = 90;
  const tEx2Name = 'Bench Press';
  const tRoutineUuid = 'routine-uuid';
  const tSession1Uuid = 'session1-uuid';
  const tEx1Uuid = 'ex1-uuid';
  const tEx2Uuid = 'ex2-uuid';

  final tParamsWithMixedItems = DtoMother.addRoutineParamsWithMixedItems(
      routineName: tRoutineName,
      sessionName: tSession1Name,
      firsExerciseName: tEx1Name,
      secondExerciseName: tEx2Name,
      restDuration: tRest1Duration);

  final tParamsEmpty = DtoMother.addRoutineParamsEmpty(name: 'Empty Routine');

  const tSaveFailure = Failure.database();

  test(
    'should create routine with empty sessions and save via repository when no initial sessions provided',
    () async {
      when(mockUuid.v4()).thenReturn(tRoutineUuid);
      when(mockRoutineRepository.save(any))
          .thenAnswer((_) async => const Right(unit));

      final result = await useCase(tParamsEmpty);

      expect(result, equals(const Right(unit)));
      verify(mockUuid.v4()).called(1);
      final captured = verify(mockRoutineRepository.save(captureAny)).captured;
      final savedRoutine = captured.single as Routine;
      expect(savedRoutine.id, RoutineId(tRoutineUuid));
      expect(savedRoutine.name, tParamsEmpty.name);
      expect(savedRoutine.sessions, isEmpty);
      verifyNoMoreInteractions(mockRoutineRepository);
      verifyNoMoreInteractions(mockUuid);
    },
  );

  test(
    'should generate ids, create routine with mixed exercise/rest items, call repository.save, and return Right(unit)',
    () async {
      final expectedUuids = [tRoutineUuid, tSession1Uuid, tEx1Uuid, tEx2Uuid];
      int uuidCallCount = 0;
      when(mockUuid.v4()).thenAnswer((_) => expectedUuids[uuidCallCount++]);
      when(mockRoutineRepository.save(any))
          .thenAnswer((_) async => const Right(unit));

      final result = await useCase(tParamsWithMixedItems);

      expect(result, equals(const Right(unit)));
      verify(mockUuid.v4()).called(expectedUuids.length);

      final captured = verify(mockRoutineRepository.save(captureAny)).captured;
      expect(captured.length, 1);
      final savedRoutine = captured.single as Routine;

      expect(savedRoutine.id, RoutineId(tRoutineUuid));
      expect(savedRoutine.name, tRoutineName);
      expect(savedRoutine.sessions.length, 1);

      final savedSession1 = savedRoutine.sessions[0];
      expect(savedSession1.id, SessionId(tSession1Uuid));
      expect(savedSession1.name, tSession1Name);
      expect(savedSession1.order, 1);
      expect(savedSession1.items.length, 3);

      final savedItem1 = savedSession1.items[0];
      expect(savedItem1, isA<ExerciseSessionItem>());
      expect(savedItem1.order, 1);
      final exercise1 = (savedItem1 as ExerciseSessionItem).exercise;
      expect(exercise1.id, ExerciseId(tEx1Uuid));
      expect(exercise1.name, tEx1Name);

      final savedItem2 = savedSession1.items[1];
      expect(savedItem2, isA<RestSessionItem>());
      expect(savedItem2.order, 2);
      final rest1 = savedItem2 as RestSessionItem;
      expect(rest1.restTime.durationInSeconds, tRest1Duration);

      final savedItem3 = savedSession1.items[2];
      expect(savedItem3, isA<ExerciseSessionItem>());
      expect(savedItem3.order, 3);
      final exercise2 = (savedItem3 as ExerciseSessionItem).exercise;
      expect(exercise2.id, ExerciseId(tEx2Uuid));
      expect(exercise2.name, tEx2Name);

      verifyNoMoreInteractions(mockRoutineRepository);
    },
  );

  test(
    'should return Failure when repository.save fails',
    () async {
      when(mockUuid.v4()).thenReturn(tRoutineUuid);
      when(mockRoutineRepository.save(any))
          .thenAnswer((_) async => const Left(tSaveFailure));

      final result = await useCase(tParamsEmpty);

      expect(result, equals(const Left(tSaveFailure)));
      verify(mockUuid.v4());
      verify(mockRoutineRepository.save(any));
      verifyNoMoreInteractions(mockRoutineRepository);
    },
  );
}
