import 'package:fitness_flow/domain/value_objects/rest_time.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RestTime Value Object', () {
    test('should create successfully with positive duration', () {
      const restTime = RestTime(durationInSeconds: 60);

      expect(restTime, isNotNull);
      expect(restTime.durationInSeconds, 60);
    });

    test('should create successfully with zero duration', () {
      const restTime = RestTime(durationInSeconds: 0);

      expect(restTime, isNotNull);
      expect(restTime.durationInSeconds, 0);
    });

    test('should throw AssertionError when durationInSeconds is negative', () {
      expect(
        () => RestTime(durationInSeconds: -1),
        throwsA(isA<AssertionError>()),
      );
    });

    test('should support value equality', () {
      const time1 = RestTime(durationInSeconds: 90);
      const time2 = RestTime(durationInSeconds: 90);
      const time3 = RestTime(durationInSeconds: 45);

      expect(time1, equals(time2));
      expect(time1, isNot(equals(time3)));
    });

    test('copyWith should create a copy with updated values', () {
      const originalTime = RestTime(durationInSeconds: 60);

      final updatedTime = originalTime.copyWith(durationInSeconds: 75);

      expect(updatedTime.durationInSeconds, 75);
      expect(originalTime.durationInSeconds, 60);
    });
  });
}
