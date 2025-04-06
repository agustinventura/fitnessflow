import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_id.freezed.dart';

@freezed
abstract class ExerciseId with _$ExerciseId {
  const ExerciseId._();

  const factory ExerciseId(String value) = _ExerciseId;
}
