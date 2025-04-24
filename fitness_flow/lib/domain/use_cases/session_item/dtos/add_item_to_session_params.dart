import 'package:fitness_flow/domain/use_cases/session_item/dtos/session_item_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../value_objects/routine_id.dart';
import '../../../value_objects/session_id.dart';

part 'add_item_to_session_params.freezed.dart';

@freezed
abstract class AddItemToSessionParams with _$AddItemToSessionParams {
  const factory AddItemToSessionParams({
    required RoutineId routineId,
    required SessionId sessionId,
    required SessionItemParams itemData,
  }) = _AddItemToSessionParams;
}
