import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_objects/rest_time.dart';
import 'exercise.dart';

part 'session_item.freezed.dart';

@freezed
abstract class SessionItem with _$SessionItem {
  const SessionItem._();

  const factory SessionItem.exercise({
    required Exercise exercise,
    required int order,
  }) = ExerciseSessionItem;

  const factory SessionItem.rest({
    required RestTime restTime,
    required int order,
  }) = RestSessionItem;
}
