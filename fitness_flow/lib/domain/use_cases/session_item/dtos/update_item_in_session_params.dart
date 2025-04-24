import 'package:fitness_flow/domain/use_cases/session_item/dtos/session_item_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../value_objects/routine_id.dart';
import '../../../value_objects/session_id.dart';

part 'update_item_in_session_params.freezed.dart';

@freezed
abstract class UpdateItemInSessionParams with _$UpdateItemInSessionParams {
  const factory UpdateItemInSessionParams({
    required RoutineId routineId,
    required SessionId sessionId,
    required int itemOrder,
    required SessionItemParams itemData,
  }) = _UpdateItemInSessionParams;
}
