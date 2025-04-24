import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../value_objects/routine_id.dart';
import '../../../value_objects/session_id.dart';

part 'delete_item_from_session_params.freezed.dart';

@freezed
abstract class DeleteItemFromSessionParams with _$DeleteItemFromSessionParams {
  const factory DeleteItemFromSessionParams({
    required RoutineId routineId,
    required SessionId sessionId,
    required int itemOrder,
  }) = _DeleteItemFromSessionParams;
}
