import 'package:fitness_flow/domain/use_cases/rest/dtos/rest_params.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RestParams Data Class', () {
    const tDuration = 90;

    test('should create instance successfully with valid duration', () {
      final params = RestParams(durationInSeconds: tDuration);

      expect(params, isNotNull);
      expect(params.durationInSeconds, tDuration);
    });

    test('should support value equality', () {
      const params1 = RestParams(durationInSeconds: tDuration);
      const params2 = RestParams(durationInSeconds: tDuration);

      expect(params1, equals(params2));
      expect(params1.hashCode, equals(params2.hashCode));
    });

    test('should have distinct inequality when duration differs', () {
      const paramsBase = RestParams(durationInSeconds: tDuration);
      const paramsDiff = RestParams(durationInSeconds: 60);

      expect(paramsBase, isNot(equals(paramsDiff)));
    });

    test('copyWith should create a copy with updated duration correctly', () {
      const originalParams = RestParams(durationInSeconds: tDuration);
      const newDuration = 120;

      final updatedParams =
          originalParams.copyWith(durationInSeconds: newDuration);

      expect(updatedParams.durationInSeconds, newDuration);
      expect(originalParams.durationInSeconds, tDuration);
    });
  });
}
