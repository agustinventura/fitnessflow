import 'package:fitness_flow/core/error/failure.dart';
import 'package:fitness_flow/domain/entities/routine.dart';
import 'package:fitness_flow/domain/entities/session_item.dart';
import 'package:fitness_flow/domain/repositories/routine_repository.dart';
import 'package:fitness_flow/domain/use_cases/exercise/update_exercise_in_session_params.dart';
import 'package:fitness_flow/domain/use_cases/exercise/update_exercise_in_session_use_case.dart';
import 'package:fitness_flow/domain/value_objects/workout_unit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../entities/mother/entity_mother.dart';
import '../../value_objects/mother/value_object_mother.dart';
import '../mother/dto_mother.dart';
@GenerateNiceMocks([MockSpec<RoutineRepository>()])
import 'update_exercise_in_session_use_case_test.mocks.dart';

void main() {
  setUpAll(() {
    provideDummy<Either<Failure, Routine?>>(Right(EntityMother.routine()));
    provideDummy<Either<Failure, Routine>>(Right(EntityMother.routine()));
  });

  late UpdateExerciseInSessionUseCase useCase;
  late MockRoutineRepository mockRoutineRepository;

  setUp(() {
    mockRoutineRepository = MockRoutineRepository();
    useCase = UpdateExerciseInSessionUseCase(mockRoutineRepository);
  });

  final tRoutineId = ValueObjectMother.routineId(value: 'r1');
  final tSessionId = ValueObjectMother.sessionId(value: 's1');
  final tExerciseIdToUpdate = ValueObjectMother.exerciseId(value: 'ex1');

  final tNewExerciseData = DtoMother.addExerciseParams(
    name: 'Updated Squat',
    targetSeriesCount: 4,
    goalQuantity: 6,
    goalUnit: WorkoutUnit.reps,
    weightValue: 110.0,
    restTimeInSeconds: 75,
  );

  final tExerciseToUpdate =
      EntityMother.exercise(id: tExerciseIdToUpdate, name: 'Old Squat Name');
  final tOtherExercise =
      EntityMother.exercise(id: ValueObjectMother.exerciseId());
  final tInitialSession = EntityMother.session(id: tSessionId, items: [
    EntityMother.sessionItemExercise(exercise: tExerciseToUpdate, order: 1),
    EntityMother.sessionItemRest(order: 2),
    EntityMother.sessionItemExercise(exercise: tOtherExercise, order: 3),
  ]);
  final tInitialRoutine =
      EntityMother.routine(id: tRoutineId, sessions: [tInitialSession]);

  const tRoutineNotFoundFailure = Failure.notFound('Routine not found');
  const tSessionNotFoundFailure =
      Failure.notFound('Session not found in routine');
  const tExerciseNotFoundFailure =
      Failure.notFound('Exercise item not found in session');
  const tDatabaseFailure = Failure.database();

  final tParams = UpdateExerciseInSessionParams(
      routineId: tRoutineId,
      sessionId: tSessionId,
      exerciseId: tExerciseIdToUpdate,
      newExerciseData: tNewExerciseData);

  final tInvalidExerciseData =
      DtoMother.addExerciseParams(targetSeriesCount: -1);
  final tInvalidParams =
      tParams.copyWith(newExerciseData: tInvalidExerciseData);

  test(
    'should load routine, find session/exercise, update exercise, and return updated Routine on success',
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
      expect(modifiedSession.items.length, 3);

      final updatedItem = modifiedSession.items.firstWhere((item) {
        if (item is ExerciseSessionItem) {
          return item.exercise.id == tExerciseIdToUpdate;
        }
        return false;
      });
      expect(updatedItem, isA<ExerciseSessionItem>());
      expect(updatedItem.order, 1);
      final updatedExercise = (updatedItem as ExerciseSessionItem).exercise;

      expect(updatedExercise.id, tExerciseIdToUpdate);
      expect(updatedExercise.name, tNewExerciseData.name);
      expect(updatedExercise.targetSeries.count,
          tNewExerciseData.targetSeriesCount);
      expect(updatedExercise.goal.quantity, tNewExerciseData.goalQuantity);
      expect(updatedExercise.goal.unit, tNewExerciseData.goalUnit);
      expect(updatedExercise.weight?.value, tNewExerciseData.weightValue);
      expect(updatedExercise.restTime.durationInSeconds,
          tNewExerciseData.restTimeInSeconds);

      expect(modifiedSession.items[1], tInitialSession.items[1]);
      expect(modifiedSession.items[2], tInitialSession.items[2]);
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
    'should return NotFoundFailure when exercise is not found within the session',
    () async {
      final sessionWithoutExercise =
          EntityMother.session(id: tSessionId, items: [
        EntityMother.sessionItemRest(order: 1),
      ]);
      final routineWithoutExercise = EntityMother.routine(
          id: tRoutineId, sessions: [sessionWithoutExercise]);
      when(mockRoutineRepository.findById(tRoutineId))
          .thenAnswer((_) async => Right(routineWithoutExercise));

      final result = await useCase(tParams);

      expect(result, equals(const Left(tExerciseNotFoundFailure)));
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

  test(
    'should return ValidationFailure when creating Value Objects from DTO fails',
    () async {
      when(mockRoutineRepository.findById(tRoutineId))
          .thenAnswer((_) async => Right(tInitialRoutine));

      final result = await useCase(tInvalidParams);

      expect(result.isLeft(), isTrue);
      result.fold(
        (failure) => expect(failure, isA<ValidationFailure>()),
        (_) => fail('Should have returned a ValidationFailure'),
      );
      verify(mockRoutineRepository.findById(tRoutineId));
      verifyNoMoreInteractions(mockRoutineRepository);
    },
  );
}
