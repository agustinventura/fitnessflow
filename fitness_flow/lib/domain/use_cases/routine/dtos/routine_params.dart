import 'package:freezed_annotation/freezed_annotation.dart';

import '../../session/session_params.dart';

part 'routine_params.freezed.dart';

@freezed
abstract class RoutineParams with _$RoutineParams {
  const factory RoutineParams({
    required String name,
    List<SessionParams>? initialSessions,
  }) = _AddRoutineParams;
}
