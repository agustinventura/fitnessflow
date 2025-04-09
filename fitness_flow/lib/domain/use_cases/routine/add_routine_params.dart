import 'package:freezed_annotation/freezed_annotation.dart';

import '../session/add_session_params.dart';

part 'add_routine_params.freezed.dart';

@freezed
abstract class AddRoutineParams with _$AddRoutineParams {
  const factory AddRoutineParams({
    required String name,
    List<AddSessionParams>? initialSessions,
  }) = _AddRoutineParams;
}
