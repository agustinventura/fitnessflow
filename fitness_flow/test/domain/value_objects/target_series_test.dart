import 'package:fitness_flow/domain/value_objects/target_series.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TargetSeries Value Object', () {
    test('should create successfully with positive count', () {
      const series1 = TargetSeries(count: 1);
      const series5 = TargetSeries(count: 5);

      expect(series1, isNotNull);
      expect(series1.count, 1);
      expect(series5, isNotNull);
      expect(series5.count, 5);
    });

    test('should throw AssertionError when count is zero', () {
      expect(
        () => TargetSeries(count: 0),
        throwsA(isA<AssertionError>()),
      );
    });

    test('should throw AssertionError when count is negative', () {
      expect(
        () => TargetSeries(count: -3),
        throwsA(isA<AssertionError>()),
      );
    });

    test('should support value equality', () {
      const series1 = TargetSeries(count: 3);
      const series2 = TargetSeries(count: 3);
      const series3 = TargetSeries(count: 5);

      expect(series1, equals(series2));
      expect(series1, isNot(equals(series3)));
    });

    test('copyWith should create a copy with updated values', () {
      const originalSeries = TargetSeries(count: 4);

      final updatedSeries = originalSeries.copyWith(count: 6);

      expect(updatedSeries.count, 6);
      expect(originalSeries.count, 4);
    });
  });
}
