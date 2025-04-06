import 'package:flutter_test/flutter_test.dart';

import '../value_objects/mother/value_object_mother.dart';
import 'mother/entity_mother.dart';

void main() {
  group('Exercise Entity', () {
    test('should create instance successfully without optional weight', () {
      final exercise =
          EntityMother.exercise(id: ValueObjectMother.exerciseId(value: 'ex1'));

      expect(exercise, isNotNull);
      expect(exercise.id, ValueObjectMother.exerciseId(value: 'ex1'));
      expect(exercise.name, 'Default Exercise');
      expect(exercise.weight, isNull);
    });

    test('should create instance successfully with optional weight', () {
      final weight = ValueObjectMother.weight(value: 95.0);

      final exercise = EntityMother.exercise(weight: weight);

      expect(exercise, isNotNull);
      expect(exercise.weight, weight);
    });

    test('should support value equality', () {
      final id = ValueObjectMother.exerciseId(value: 'eq_id');
      final weight = ValueObjectMother.weight(value: 100.0);
      final exerciseA =
          EntityMother.exercise(id: id, name: 'Squat', weight: weight);
      final exerciseB =
          EntityMother.exercise(id: id, name: 'Squat', weight: weight);

      expect(exerciseA, equals(exerciseB));
      expect(exerciseA.hashCode, equals(exerciseB.hashCode));
    });

    test('should have distinct inequality when props differ using copyWith',
        () {
      final exerciseBase =
          EntityMother.exercise(weight: ValueObjectMother.weight(value: 150.0));

      final exerciseDiffId = exerciseBase.copyWith(
          id: ValueObjectMother.exerciseId(value: 'neq_id_diff'));
      final exerciseDiffName = exerciseBase.copyWith(name: 'Sumo Deadlift');
      final exerciseDiffWeight =
          exerciseBase.copyWith(weight: ValueObjectMother.weight(value: 160.0));
      final exerciseNullWeight = exerciseBase.copyWith(weight: null);

      expect(exerciseBase, isNot(equals(exerciseDiffId)));
      expect(exerciseBase, isNot(equals(exerciseDiffName)));
      expect(exerciseBase, isNot(equals(exerciseDiffWeight)));
      expect(exerciseBase, isNot(equals(exerciseNullWeight)));
      expect(exerciseNullWeight, isNot(equals(exerciseBase)));
    });

    test('copyWith should create a copy with updated values correctly', () {
      final originalExercise = EntityMother.exercise(weight: null);
      final newWeight = ValueObjectMother.weight(value: 90.0);
      const newName = "Incline Bench Press";

      final updatedExercise = originalExercise.copyWith(
        name: newName,
        weight: newWeight,
      );
      final clearedWeightExercise = updatedExercise.copyWith(weight: null);

      expect(updatedExercise.name, newName);
      expect(updatedExercise.weight, newWeight);
      expect(clearedWeightExercise.weight, isNull);
      expect(clearedWeightExercise.name, newName);
      expect(originalExercise.name, 'Default Exercise');
      expect(originalExercise.weight, isNull);
    });
  });
}
