import 'package:freezed_annotation/freezed_annotation.dart';

import 'add_exercise_params.dart';
import 'add_rest_params.dart';

part 'add_session_item_params.freezed.dart';

@freezed
abstract class AddSessionItemParams with _$AddSessionItemParams {
  const factory AddSessionItemParams.exercise({
    required AddExerciseParams params,
  }) = ExerciseSessionItemParams;

  const factory AddSessionItemParams.rest({
    required AddRestParams params,
  }) = RestSessionItemParams;
}
