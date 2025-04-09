import 'package:fitness_flow/core/error/failure.dart';
import 'package:fitness_flow/domain/entities/routine.dart';
import 'package:fitness_flow/domain/repositories/routine_repository.dart';
import 'package:fitness_flow/domain/use_cases/routine/get_routine_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../entities/mother/entity_mother.dart';
import '../../value_objects/mother/value_object_mother.dart';
@GenerateNiceMocks([MockSpec<RoutineRepository>()])
import 'get_routine_use_case_test.mocks.dart';

void main() {
  setUpAll(() {
    provideDummy<Either<Failure, Routine?>>(const Right(null));
  });

  late GetRoutineUseCase useCase;
  late MockRoutineRepository mockRoutineRepository;

  setUp(() {
    mockRoutineRepository = MockRoutineRepository();
    useCase = GetRoutineUseCase(mockRoutineRepository);
  });

  final tRoutineId = ValueObjectMother.routineId(value: 'r1');
  final tRoutine = EntityMother.routine(id: tRoutineId);
  const tDatabaseFailure = Failure.database();

  test(
    'should get routine from the repository for the given id when found',
    () async {
      when(mockRoutineRepository.findById(tRoutineId))
          .thenAnswer((_) async => Right(tRoutine));

      final result = await useCase(tRoutineId);

      expect(result, equals(Right(tRoutine)));
      verify(mockRoutineRepository.findById(tRoutineId));
      verifyNoMoreInteractions(mockRoutineRepository);
    },
  );

  test(
    'should return Right(null) when routine is not found for the given id',
    () async {
      when(mockRoutineRepository.findById(tRoutineId))
          .thenAnswer((_) async => const Right(null));

      final result = await useCase(tRoutineId);

      expect(result, equals(const Right(null)));
      verify(mockRoutineRepository.findById(tRoutineId));
      verifyNoMoreInteractions(mockRoutineRepository);
    },
  );

  test(
    'should return Failure when the call to repository is unsuccessful',
    () async {
      when(mockRoutineRepository.findById(tRoutineId))
          .thenAnswer((_) async => const Left(tDatabaseFailure));

      final result = await useCase(tRoutineId);

      expect(result, equals(const Left(tDatabaseFailure)));
      verify(mockRoutineRepository.findById(tRoutineId));
      verifyNoMoreInteractions(mockRoutineRepository);
    },
  );
}
