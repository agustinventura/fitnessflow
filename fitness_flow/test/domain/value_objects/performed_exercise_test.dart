import 'package:fitness_flow/domain/value_objects/performed_exercise.dart';
import 'package:fitness_flow/domain/value_objects/weight.dart';
import 'package:fitness_flow/domain/value_objects/weight_unit.dart';
import 'package:fitness_flow/domain/value_objects/workout_goal.dart';
import 'package:fitness_flow/domain/value_objects/workout_unit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const validExerciseName = 'Push Up';
  const validSeriesCompleted = 3;
  final validOriginalGoal = WorkoutGoal(quantity: 10, unit: WorkoutUnit.reps);
  final validWeight = Weight(value: 20.0, unit: WeightUnit.kg);

  group('PerformedExercise Value Object', () {
    test('should create successfully with valid mandatory data', () {
      final performedExercise = PerformedExercise(
        exerciseName: validExerciseName,
        seriesCompleted: validSeriesCompleted,
        originalGoal: validOriginalGoal,
      );

      expect(performedExercise, isNotNull);
      expect(performedExercise.exerciseName, validExerciseName);
      expect(performedExercise.seriesCompleted, validSeriesCompleted);
      expect(performedExercise.originalGoal, validOriginalGoal);
      expect(performedExercise.weight, isNull);
    });

    test('should create successfully with valid optional data (weight)', () {
      final performedExercise = PerformedExercise(
        exerciseName: validExerciseName,
        seriesCompleted: validSeriesCompleted,
        originalGoal: validOriginalGoal,
        weight: validWeight,
      );

      expect(performedExercise, isNotNull);
      expect(performedExercise.weight, validWeight);
    });

    test('should throw ArgumentError when exerciseName is empty', () {
      expect(
        () => PerformedExercise(
          exerciseName: '',
          seriesCompleted: validSeriesCompleted,
          originalGoal: validOriginalGoal,
        ),
        throwsA(isA<AssertionError>()),
      );
    });

    test('should throw ArgumentError when exerciseName is only whitespace', () {
      expect(
        () => PerformedExercise(
          exerciseName: '   ',
          seriesCompleted: validSeriesCompleted,
          originalGoal: validOriginalGoal,
        ),
        throwsA(isA<AssertionError>()),
      );
    });

    test('should throw ArgumentError when seriesCompleted is negative', () {
      expect(
        () => PerformedExercise(
          exerciseName: validExerciseName,
          seriesCompleted: -1,
          originalGoal: validOriginalGoal,
        ),
        throwsA(isA<AssertionError>()),
      );
    });

    test('should support value equality', () {
      final exercise1 = PerformedExercise(
        exerciseName: validExerciseName,
        seriesCompleted: validSeriesCompleted,
        originalGoal: validOriginalGoal,
        weight: validWeight,
      );
      final exercise2 = PerformedExercise(
        exerciseName: validExerciseName,
        seriesCompleted: validSeriesCompleted,
        originalGoal: validOriginalGoal,
        weight: validWeight,
      );
      final exercise3 = PerformedExercise(
        exerciseName: 'Pull Up',
        seriesCompleted: validSeriesCompleted,
        originalGoal: validOriginalGoal,
        weight: validWeight,
      );

      expect(exercise1, equals(exercise2));
      expect(exercise1, isNot(equals(exercise3)));
    });

    test('copyWith should create a copy with updated values', () {
      final originalExercise = PerformedExercise(
        exerciseName: validExerciseName,
        seriesCompleted: validSeriesCompleted,
        originalGoal: validOriginalGoal,
        weight: validWeight,
      );
      final updatedWeight = Weight(value: 25.0);

      final updatedExercise = originalExercise.copyWith(
        seriesCompleted: 4,
        weight: updatedWeight,
      );

      expect(updatedExercise.exerciseName, validExerciseName);
      expect(updatedExercise.seriesCompleted, 4);
      expect(updatedExercise.originalGoal, validOriginalGoal);
      expect(updatedExercise.weight, updatedWeight);

      expect(originalExercise.seriesCompleted, validSeriesCompleted);
      expect(originalExercise.weight, validWeight);
    });
  });
}
