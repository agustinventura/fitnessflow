import 'package:fpdart/fpdart.dart';

import '../../../core/error/failure.dart';
import '../../entities/routine.dart';
import '../../repositories/routine_repository.dart';

class GetRoutinesUseCase {
  final RoutineRepository repository;

  GetRoutinesUseCase(this.repository);

  Future<Either<Failure, List<Routine>>> call() async {
    return await repository.getAll();
  }
}
