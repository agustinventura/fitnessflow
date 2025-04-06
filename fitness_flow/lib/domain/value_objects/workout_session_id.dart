import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_session_id.freezed.dart';

@freezed
abstract class WorkoutSessionId with _$WorkoutSessionId {
  const WorkoutSessionId._();

  const factory WorkoutSessionId(String value) = _WorkoutSessionId;
}
