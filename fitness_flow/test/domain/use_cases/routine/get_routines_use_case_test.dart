import 'package:fitness_flow/core/error/failure.dart';
import 'package:fitness_flow/domain/entities/routine.dart';
import 'package:fitness_flow/domain/repositories/routine_repository.dart';
import 'package:fitness_flow/domain/use_cases/routine/get_routines_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../entities/mother/entity_mother.dart';
import '../../value_objects/mother/value_object_mother.dart';
@GenerateNiceMocks([MockSpec<RoutineRepository>()])
import 'get_routines_use_case_test.mocks.dart';

void main() {
  setUpAll(() {
    provideDummy<Either<Failure, List<Routine>>>(const Right([]));
  });

  late GetRoutinesUseCase useCase;
  late MockRoutineRepository mockRoutineRepository;

  setUp(() {
    mockRoutineRepository = MockRoutineRepository();
    useCase = GetRoutinesUseCase(mockRoutineRepository);
  });

  final tRoutineList = [
    EntityMother.routine(id: ValueObjectMother.routineId(value: 'r1')),
    EntityMother.routine(
        id: ValueObjectMother.routineId(value: 'r2'), name: 'Upper Body'),
  ];
  final tDatabaseFailure = DatabaseFailure();

  test(
    'should get list of routines from the repository when call is successful',
    () async {
      when(mockRoutineRepository.getAll())
          .thenAnswer((_) async => Right(tRoutineList));

      final result = await useCase();

      expect(result, equals(Right(tRoutineList)));
      verify(mockRoutineRepository.getAll());
      verifyNoMoreInteractions(mockRoutineRepository);
    },
  );

  test(
    'should return a Failure when the call to repository is unsuccessful',
    () async {
      when(mockRoutineRepository.getAll())
          .thenAnswer((_) async => Left(tDatabaseFailure));

      final result = await useCase();

      expect(result, equals(Left(tDatabaseFailure)));
      verify(mockRoutineRepository.getAll());
      verifyNoMoreInteractions(mockRoutineRepository);
    },
  );
}
