import 'package:fpdart/fpdart.dart';

import '../../../core/error/failure.dart';
import '../../entities/routine.dart';
import '../../repositories/routine_repository.dart';

class UpdateRoutineUseCase {
  final RoutineRepository repository;

  UpdateRoutineUseCase(this.repository);

  Future<Either<Failure, Unit>> call(Routine routine) async {
    return await repository.save(routine);
  }
}
