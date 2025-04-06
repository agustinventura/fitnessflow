import 'package:fitness_flow/domain/value_objects/weight_unit.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weight.freezed.dart';

@freezed
abstract class Weight with _$Weight {
  Weight._({
    required this.value,
    required this.unit,
  }) {
    assert(value >= 0, 'Weight value must be positive.');
    final valueRounded = (value * 100).roundToDouble() / 100;
    assert(
        value == valueRounded, 'Weight must have two decimal places at most.');
  }

  factory Weight(
      {required double value,
      @Default(WeightUnit.kg) WeightUnit unit}) = _Weight;

  final double value;
  final WeightUnit unit;
}
