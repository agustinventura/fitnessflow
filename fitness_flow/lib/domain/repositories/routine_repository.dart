import 'package:fpdart/fpdart.dart';

import '../../core/error/failure.dart';
import '../entities/routine.dart';
import '../value_objects/routine_id.dart';

abstract class RoutineRepository {
  Future<Either<Failure, Routine?>> findById(RoutineId id);

  Future<Either<Failure, List<Routine>>> getAll();

  Future<Either<Failure, Unit>> save(Routine routine);

  Future<Either<Failure, Unit>> delete(RoutineId id);
}
