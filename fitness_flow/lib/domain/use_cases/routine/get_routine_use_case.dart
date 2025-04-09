import 'package:fpdart/fpdart.dart';

import '../../../core/error/failure.dart';
import '../../entities/routine.dart';
import '../../repositories/routine_repository.dart';
import '../../value_objects/routine_id.dart';

class GetRoutineUseCase {
  final RoutineRepository repository;

  GetRoutineUseCase(this.repository);

  Future<Either<Failure, Routine?>> call(RoutineId id) async {
    return await repository.findById(id);
  }
}
