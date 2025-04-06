import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_objects/routine_id.dart';
import 'session.dart';

part 'routine.freezed.dart';

@freezed
abstract class Routine with _$Routine {
  const Routine._();

  factory Routine({
    required RoutineId id,
    required String name,
    required List<Session> sessions,
  }) = _Routine;
}
