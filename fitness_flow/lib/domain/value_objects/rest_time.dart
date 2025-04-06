import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rest_time.freezed.dart';

@freezed
abstract class RestTime with _$RestTime {
  const RestTime._();

  @Assert('durationInSeconds >= 0', 'Rest time must be positive')
  const factory RestTime({
    required int durationInSeconds,
  }) = _RestTime;
}
