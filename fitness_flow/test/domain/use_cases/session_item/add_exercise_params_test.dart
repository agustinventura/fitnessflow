import 'package:fitness_flow/domain/use_cases/session_item/add_exercise_params.dart';
import 'package:fitness_flow/domain/value_objects/workout_unit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AddExerciseParams Data Class', () {
    const tName = 'Bench Press';
    const tSeries = 3;
    const tGoalQty = 10;
    const tGoalUnit = WorkoutUnit.reps;
    const tWeight = 80.5;
    const tRest = 60;

    test('should create instance successfully with all fields', () {
      final params = AddExerciseParams(
        name: tName,
        targetSeriesCount: tSeries,
        goalQuantity: tGoalQty,
        goalUnit: tGoalUnit,
        weightValue: tWeight,
        restTimeInSeconds: tRest,
      );

      expect(params, isNotNull);
      expect(params.name, tName);
      expect(params.targetSeriesCount, tSeries);
      expect(params.goalQuantity, tGoalQty);
      expect(params.goalUnit, tGoalUnit);
      expect(params.weightValue, tWeight);
      expect(params.restTimeInSeconds, tRest);
    });

    test('should create instance successfully with optional weight as null',
        () {
      final params = AddExerciseParams(
        name: tName,
        targetSeriesCount: tSeries,
        goalQuantity: tGoalQty,
        goalUnit: tGoalUnit,
        weightValue: null,
        restTimeInSeconds: tRest,
      );
      expect(params, isNotNull);
      expect(params.weightValue, isNull);
    });

    test('should support value equality', () {
      final params1 = AddExerciseParams(
          name: tName,
          targetSeriesCount: tSeries,
          goalQuantity: tGoalQty,
          goalUnit: tGoalUnit,
          weightValue: tWeight,
          restTimeInSeconds: tRest);
      final params2 = AddExerciseParams(
          name: tName,
          targetSeriesCount: tSeries,
          goalQuantity: tGoalQty,
          goalUnit: tGoalUnit,
          weightValue: tWeight,
          restTimeInSeconds: tRest);

      expect(params1, equals(params2));
      expect(params1.hashCode, equals(params2.hashCode));
    });

    test('should have distinct inequality when props differ', () {
      final paramsBase = AddExerciseParams(
          name: tName,
          targetSeriesCount: tSeries,
          goalQuantity: tGoalQty,
          goalUnit: tGoalUnit,
          weightValue: tWeight,
          restTimeInSeconds: tRest);
      final paramsDiffName = AddExerciseParams(
          name: 'Other',
          targetSeriesCount: tSeries,
          goalQuantity: tGoalQty,
          goalUnit: tGoalUnit,
          weightValue: tWeight,
          restTimeInSeconds: tRest);
      final paramsDiffWeight = AddExerciseParams(
          name: tName,
          targetSeriesCount: tSeries,
          goalQuantity: tGoalQty,
          goalUnit: tGoalUnit,
          weightValue: null,
          restTimeInSeconds: tRest);

      expect(paramsBase, isNot(equals(paramsDiffName)));
      expect(paramsBase, isNot(equals(paramsDiffWeight)));
    });

    test('copyWith should create a copy with updated values correctly', () {
      final originalParams = AddExerciseParams(
          name: tName,
          targetSeriesCount: tSeries,
          goalQuantity: tGoalQty,
          goalUnit: tGoalUnit,
          weightValue: tWeight,
          restTimeInSeconds: tRest);

      final updatedParams =
          originalParams.copyWith(name: 'New Name', weightValue: null);

      expect(updatedParams.name, 'New Name');
      expect(updatedParams.weightValue, isNull);
      expect(updatedParams.targetSeriesCount, tSeries);
      expect(originalParams.name, tName);
      expect(originalParams.weightValue, tWeight);
    });
  });
}
