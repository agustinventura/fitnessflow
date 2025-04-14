import 'package:fitness_flow/core/error/failure.dart';
import 'package:fitness_flow/domain/repositories/routine_repository.dart';
import 'package:fitness_flow/domain/use_cases/routine/update_routine_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../entities/mother/entity_mother.dart';
@GenerateNiceMocks([MockSpec<RoutineRepository>()])
import 'update_routine_use_case_test.mocks.dart';

void main() {
  setUpAll(() {
    provideDummy<Either<Failure, Unit>>(const Right(unit));
  });

  late UpdateRoutineUseCase useCase;
  late MockRoutineRepository mockRoutineRepository;

  setUp(() {
    mockRoutineRepository = MockRoutineRepository();
    useCase = UpdateRoutineUseCase(mockRoutineRepository);
  });

  final tRoutineToSave = EntityMother.routine();
  const tSaveFailure = Failure.database();

  test(
    'should call repository.save with the provided routine and return Right(unit) on success',
    () async {
      when(mockRoutineRepository.save(tRoutineToSave))
          .thenAnswer((_) async => const Right(unit));

      final result = await useCase(tRoutineToSave);

      expect(result, equals(const Right(unit)));
      verify(mockRoutineRepository.save(tRoutineToSave));
      verifyNoMoreInteractions(mockRoutineRepository);
    },
  );

  test(
    'should return Failure when the call to repository.save is unsuccessful',
    () async {
      when(mockRoutineRepository.save(tRoutineToSave))
          .thenAnswer((_) async => const Left(tSaveFailure));

      final result = await useCase(tRoutineToSave);

      expect(result, equals(const Left(tSaveFailure)));
      verify(mockRoutineRepository.save(tRoutineToSave));
      verifyNoMoreInteractions(mockRoutineRepository);
    },
  );
}
