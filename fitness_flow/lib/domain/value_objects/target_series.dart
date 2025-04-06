import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'target_series.freezed.dart';

@freezed
abstract class TargetSeries with _$TargetSeries {
  const TargetSeries._();

  @Assert('count > 0', 'El número de series objetivo debe ser positivo.')
  const factory TargetSeries({
    required int count,
  }) = _TargetSeries;
}
