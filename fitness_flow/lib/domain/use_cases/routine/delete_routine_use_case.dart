import 'package:fpdart/fpdart.dart';

import '../../../core/error/failure.dart';
import '../../repositories/routine_repository.dart';
import '../../value_objects/routine_id.dart';

class DeleteRoutineUseCase {
  final RoutineRepository repository;

  DeleteRoutineUseCase(this.repository);

  Future<Either<Failure, Unit>> call(RoutineId id) async {
    return await repository.delete(id);
  }
}
