import 'package:fitness_flow/core/error/failure.dart';
import 'package:fitness_flow/domain/repositories/routine_repository.dart';
import 'package:fitness_flow/domain/use_cases/routine/delete_routine_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../value_objects/mother/value_object_mother.dart';
@GenerateNiceMocks([MockSpec<RoutineRepository>()])
import 'delete_routine_use_case_test.mocks.dart';

void main() {
  setUpAll(() {
    provideDummy<Either<Failure, Unit>>(const Right(unit));
  });

  late DeleteRoutineUseCase useCase;
  late MockRoutineRepository mockRoutineRepository;

  setUp(() {
    mockRoutineRepository = MockRoutineRepository();
    useCase = DeleteRoutineUseCase(mockRoutineRepository);
  });

  final tRoutineId = ValueObjectMother.routineId(value: 'routine_to_delete');
  const tDatabaseFailure = DatabaseFailure();

  test(
    'should call repository.delete with the correct id and return Right(unit) on success',
    () async {
      when(mockRoutineRepository.delete(tRoutineId))
          .thenAnswer((_) async => const Right(unit));

      final result = await useCase(tRoutineId);

      expect(result, equals(const Right(unit)));
      verify(mockRoutineRepository.delete(tRoutineId));
      verifyNoMoreInteractions(mockRoutineRepository);
    },
  );

  test(
    'should return Failure when the call to repository.delete is unsuccessful',
    () async {
      when(mockRoutineRepository.delete(tRoutineId))
          .thenAnswer((_) async => const Left(tDatabaseFailure));

      final result = await useCase(tRoutineId);

      expect(result, equals(const Left(tDatabaseFailure)));
      verify(mockRoutineRepository.delete(tRoutineId));
      verifyNoMoreInteractions(mockRoutineRepository);
    },
  );
}
