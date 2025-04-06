import 'package:fitness_flow/domain/value_objects/workout_goal.dart';
import 'package:fitness_flow/domain/value_objects/workout_unit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('WorkoutGoal Value Object', () {
    test('should create successfully with positive quantity for reps', () {
      const goal = WorkoutGoal(quantity: 10, unit: WorkoutUnit.reps);
      expect(goal, isNotNull);
      expect(goal.quantity, 10);
      expect(goal.unit, WorkoutUnit.reps);
    });

    test('should create successfully with positive quantity for seconds', () {
      const goal = WorkoutGoal(quantity: 30, unit: WorkoutUnit.seconds);
      expect(goal, isNotNull);
      expect(goal.quantity, 30);
      expect(goal.unit, WorkoutUnit.seconds);
    });

    test('should create successfully with positive quantity for meters', () {
      const goal = WorkoutGoal(quantity: 500, unit: WorkoutUnit.meters);
      expect(goal, isNotNull);
      expect(goal.quantity, 500);
      expect(goal.unit, WorkoutUnit.meters);
    });

    test('should create successfully with positive quantity for calories', () {
      const goal = WorkoutGoal(quantity: 150, unit: WorkoutUnit.calories);
      expect(goal, isNotNull);
      expect(goal.quantity, 150);
      expect(goal.unit, WorkoutUnit.calories);
    });

    test('should throw AssertionError when quantity is zero', () {
      expect(
        () => WorkoutGoal(quantity: 0, unit: WorkoutUnit.reps),
        throwsA(isA<AssertionError>()),
      );
    });

    test('should throw AssertionError when quantity is negative', () {
      expect(
        () => WorkoutGoal(quantity: -5, unit: WorkoutUnit.seconds),
        throwsA(isA<AssertionError>()),
      );
    });

    test('should support value equality', () {
      const goal1 = WorkoutGoal(quantity: 10, unit: WorkoutUnit.reps);
      const goal2 = WorkoutGoal(quantity: 10, unit: WorkoutUnit.reps);
      const goal3 = WorkoutGoal(quantity: 12, unit: WorkoutUnit.reps);
      const goal4 = WorkoutGoal(quantity: 10, unit: WorkoutUnit.seconds);

      expect(goal1, equals(goal2));
      expect(goal1, isNot(equals(goal3)));
      expect(goal1, isNot(equals(goal4)));
    });

    test('copyWith should create a copy with updated values', () {
      const originalGoal = WorkoutGoal(quantity: 500, unit: WorkoutUnit.meters);

      final updatedGoal = originalGoal.copyWith(quantity: 600);
      final updatedGoal2 = originalGoal.copyWith(unit: WorkoutUnit.calories);

      expect(updatedGoal.quantity, 600);
      expect(updatedGoal.unit, WorkoutUnit.meters);

      expect(updatedGoal2.quantity, 500);
      expect(updatedGoal2.unit, WorkoutUnit.calories);

      expect(originalGoal.quantity, 500);
      expect(originalGoal.unit, WorkoutUnit.meters);
    });
  });
}
