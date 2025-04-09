import 'package:fitness_flow/domain/use_cases/routine/add_routine_params.dart';
import 'package:flutter_test/flutter_test.dart';

import '../mother/dto_mother.dart';

void main() {
  group('AddRoutineParams Data Class', () {
    const tRoutineName = 'My New Routine';
    final tSessionParam1 = DtoMother.addSessionParams(name: 'Push');
    final tSessionParam2 = DtoMother.addSessionParams(name: 'Pull');

    test(
        'should create instance successfully with required name and null sessions',
        () {
      final params = AddRoutineParams(
        name: tRoutineName,
        initialSessions: null,
      );

      expect(params, isNotNull);
      expect(params.name, tRoutineName);
      expect(params.initialSessions, isNull);
    });

    test('should create instance successfully with empty sessions list', () {
      final params = AddRoutineParams(
        name: tRoutineName,
        initialSessions: [],
      );

      expect(params, isNotNull);
      expect(params.name, tRoutineName);
      expect(params.initialSessions, isEmpty);
    });

    test('should create instance successfully with sessions list', () {
      final params = AddRoutineParams(
        name: tRoutineName,
        initialSessions: [tSessionParam1, tSessionParam2],
      );

      expect(params, isNotNull);
      expect(params.name, tRoutineName);
      expect(params.initialSessions,
          orderedEquals([tSessionParam1, tSessionParam2]));
      expect(params.initialSessions?.length, 2);
    });

    test('should support value equality', () {
      final params1 = AddRoutineParams(
          name: tRoutineName, initialSessions: [tSessionParam1]);
      final params2 = AddRoutineParams(
          name: tRoutineName, initialSessions: [tSessionParam1]);
      final params3 =
          AddRoutineParams(name: tRoutineName, initialSessions: null);

      expect(params1, equals(params2));
      expect(params1.hashCode, equals(params2.hashCode));
      expect(params1, isNot(equals(params3)));
    });

    test('should have distinct inequality when props differ', () {
      final paramsBase = AddRoutineParams(
          name: tRoutineName, initialSessions: [tSessionParam1]);
      final paramsDiffName = AddRoutineParams(
          name: 'Other Routine', initialSessions: [tSessionParam1]);
      final paramsDiffListContent = AddRoutineParams(
          name: tRoutineName, initialSessions: [tSessionParam2]);
      final paramsDiffListOrder = AddRoutineParams(
          name: tRoutineName,
          initialSessions: [tSessionParam2, tSessionParam1]);
      final paramsDiffListLength =
          AddRoutineParams(name: tRoutineName, initialSessions: []);
      final paramsNullList =
          AddRoutineParams(name: tRoutineName, initialSessions: null);

      expect(paramsBase, isNot(equals(paramsDiffName)));
      expect(paramsBase, isNot(equals(paramsDiffListContent)));
      expect(paramsBase, isNot(equals(paramsDiffListOrder)));
      expect(paramsBase, isNot(equals(paramsDiffListLength)));
      expect(paramsBase, isNot(equals(paramsNullList)));
      expect(paramsNullList, isNot(equals(paramsBase)));
    });

    test('copyWith should create a copy with updated values correctly', () {
      final originalParams = AddRoutineParams(
          name: tRoutineName, initialSessions: [tSessionParam1]);
      final newSessions = [tSessionParam1, tSessionParam2];

      final updatedParamsName = originalParams.copyWith(name: 'Super Routine');
      final updatedParamsSessions =
          originalParams.copyWith(initialSessions: newSessions);
      final clearedSessionsParams =
          originalParams.copyWith(initialSessions: null);

      expect(updatedParamsName.name, 'Super Routine');
      expect(updatedParamsName.initialSessions, [tSessionParam1]);

      expect(updatedParamsSessions.name, tRoutineName);
      expect(updatedParamsSessions.initialSessions, newSessions);

      expect(clearedSessionsParams.name, tRoutineName);
      expect(clearedSessionsParams.initialSessions, isNull);

      expect(originalParams.name, tRoutineName);
      expect(originalParams.initialSessions, [tSessionParam1]);
    });
  });
}
