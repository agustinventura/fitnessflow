import 'package:freezed_annotation/freezed_annotation.dart';

import '../../exercise/dtos/exercise_params.dart';
import '../../rest/dtos/rest_params.dart';

part 'session_item_params.freezed.dart';

@freezed
abstract class SessionItemParams with _$SessionItemParams {
  const factory SessionItemParams.exercise({
    required ExerciseParams params,
  }) = ExerciseSessionItemParams;

  const factory SessionItemParams.rest({
    required RestParams params,
  }) = RestSessionItemParams;
}
