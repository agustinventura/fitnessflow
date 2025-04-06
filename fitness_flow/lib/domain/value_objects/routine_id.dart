import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'routine_id.freezed.dart';

@freezed
abstract class RoutineId with _$RoutineId {
  const factory RoutineId(String value) = _RoutineId;
}
