import 'package:fitness_flow/domain/use_cases/session/add_session_params.dart';
import 'package:flutter_test/flutter_test.dart';

import '../mother/dto_mother.dart';

void main() {
  group('AddSessionParams Data Class', () {
    const tSessionName = 'Push Day';
    final tExerciseParam1 =
        DtoMother.addExerciseSessionItemParams(name: 'Bench Press');
    final tExerciseParam2 =
        DtoMother.addExerciseSessionItemParams(name: 'Overhead Press');

    test('should create instance successfully with required fields', () {
      final params = AddSessionParams(
        name: tSessionName,
        items: [tExerciseParam1, tExerciseParam2],
      );

      expect(params, isNotNull);
      expect(params.name, tSessionName);
      expect(params.items, orderedEquals([tExerciseParam1, tExerciseParam2]));
      expect(params.items.length, 2);
    });

    test('should create instance successfully with empty session_item list',
        () {
      final params = AddSessionParams(
        name: tSessionName,
        items: [],
      );

      expect(params, isNotNull);
      expect(params.name, tSessionName);
      expect(params.items, isEmpty);
    });

    test('should support value equality', () {
      final params1 =
          AddSessionParams(name: tSessionName, items: [tExerciseParam1]);
      final params2 =
          AddSessionParams(name: tSessionName, items: [tExerciseParam1]);

      expect(params1, equals(params2));
      expect(params1.hashCode, equals(params2.hashCode));
    });

    test('should have distinct inequality when props differ', () {
      final paramsBase =
          AddSessionParams(name: tSessionName, items: [tExerciseParam1]);
      final paramsDiffName =
          AddSessionParams(name: 'Pull Day', items: [tExerciseParam1]);
      final paramsDiffListContent =
          AddSessionParams(name: tSessionName, items: [tExerciseParam2]);
      final paramsDiffListOrder = AddSessionParams(
          name: tSessionName, items: [tExerciseParam2, tExerciseParam1]);
      final paramsDiffListLength =
          AddSessionParams(name: tSessionName, items: []);

      expect(paramsBase, isNot(equals(paramsDiffName)));
      expect(paramsBase, isNot(equals(paramsDiffListContent)));
      expect(paramsBase, isNot(equals(paramsDiffListOrder)));
      expect(paramsBase, isNot(equals(paramsDiffListLength)));
    });

    test('copyWith should create a copy with updated values correctly', () {
      final originalParams =
          AddSessionParams(name: tSessionName, items: [tExerciseParam1]);
      final newExercises = [tExerciseParam1, tExerciseParam2];

      final updatedParamsName = originalParams.copyWith(name: 'Heavy Push Day');
      final updatedParamsExercises =
          originalParams.copyWith(items: newExercises);

      expect(updatedParamsName.name, 'Heavy Push Day');
      expect(updatedParamsName.items, [tExerciseParam1]);

      expect(updatedParamsExercises.name, tSessionName);
      expect(updatedParamsExercises.items, newExercises);

      expect(originalParams.name, tSessionName);
      expect(originalParams.items, [tExerciseParam1]);
    });
  });
}
