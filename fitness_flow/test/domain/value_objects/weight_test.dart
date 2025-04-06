import 'package:fitness_flow/domain/value_objects/weight.dart';
import 'package:fitness_flow/domain/value_objects/weight_unit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Weight Value Object', () {
    test('should create successfully with positive value and default unit (kg)',
        () {
      final weight = Weight(value: 75.5);

      expect(weight, isNotNull);
      expect(weight.value, 75.5);
      expect(weight.unit, WeightUnit.kg);
    });

    test('should create successfully with two decimal places', () {
      final weight = Weight(value: 75.55);

      expect(weight, isNotNull);
      expect(weight.value, 75.55);
      expect(weight.unit, WeightUnit.kg);
    });

    test('should create successfully with zero value', () {
      final weight = Weight(value: 0.0);

      expect(weight, isNotNull);
      expect(weight.value, 0.0);
      expect(weight.unit, WeightUnit.kg);
    });

    test('should create successfully when unit is explicitly provided', () {
      final weight = Weight(value: 10.0, unit: WeightUnit.kg);

      expect(weight, isNotNull);
      expect(weight.value, 10.0);
      expect(weight.unit, WeightUnit.kg);
    });

    test('should throw AssertionError when value is negative', () {
      expect(
        () => Weight(value: -10.5),
        throwsA(isA<AssertionError>()),
      );
    });

    test(
        'should throw ArgumentError when value has more than two decimal places',
        () {
      expect(
        () => Weight(value: 75.123),
        throwsA(isA<AssertionError>()),
      );
      expect(
        () => Weight(value: 0.001),
        throwsA(isA<AssertionError>()),
      );
    });

    test('should support value equality', () {
      final weight1 = Weight(value: 50.0, unit: WeightUnit.kg);
      final weight2 = Weight(value: 50.0, unit: WeightUnit.kg);
      final weight3 = Weight(value: 50.5, unit: WeightUnit.kg);

      expect(weight1, equals(weight2));
      expect(weight1, isNot(equals(weight3)));
    });

    test('copyWith should create a copy with updated values', () {
      final originalWeight = Weight(value: 100.0, unit: WeightUnit.kg);

      final updatedWeightValue = originalWeight.copyWith(value: 105.5);

      expect(updatedWeightValue.value, 105.5);
      expect(updatedWeightValue.unit, WeightUnit.kg);

      expect(originalWeight.value, 100.0);
      expect(originalWeight.unit, WeightUnit.kg);
    });
  });
}
