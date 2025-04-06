import 'package:flutter_test/flutter_test.dart';

import '../value_objects/mother/value_object_mother.dart';
import 'mother/entity_mother.dart';

void main() {
  group('Routine Entity', () {
    final routineId = ValueObjectMother.routineId(value: 'routine1');
    const routineName = 'Full Body 3x Week';
    final session1 = EntityMother.session(
        id: ValueObjectMother.sessionId(value: 's1'),
        name: 'Workout A',
        order: 1);
    final session2 = EntityMother.session(
        id: ValueObjectMother.sessionId(value: 's2'),
        name: 'Workout B',
        order: 2);

    test('should create instance successfully with empty sessions list', () {
      final routine = EntityMother.routine(
        id: routineId,
        name: routineName,
        sessions: [],
      );

      expect(routine, isNotNull);
      expect(routine.id, routineId);
      expect(routine.name, routineName);
      expect(routine.sessions, isEmpty);
    });

    test('should create instance successfully with non-empty sessions list',
        () {
      final sessions = [session1, session2];
      final routine = EntityMother.routine(sessions: sessions);

      expect(routine, isNotNull);
      expect(routine.sessions, sessions);
      expect(routine.sessions.length, 2);
    });

    test('should support value equality', () {
      final sessions = [session1];
      final routineA = EntityMother.routine(
          id: ValueObjectMother.routineId(value: 'eq_id'),
          name: 'My Routine',
          sessions: sessions);
      final routineB = EntityMother.routine(
          id: ValueObjectMother.routineId(value: 'eq_id'),
          name: 'My Routine',
          sessions: sessions);

      expect(routineA, equals(routineB));
      expect(routineA.hashCode, equals(routineB.hashCode));
    });

    test('should have distinct inequality when props differ using copyWith',
        () {
      final routineBase = EntityMother.routine();

      final routineDiffId = routineBase.copyWith(
          id: ValueObjectMother.routineId(value: 'neq_id_diff'));
      final routineDiffName = routineBase.copyWith(name: 'Advanced Routine');
      final routineDiffSessions = routineBase.copyWith(sessions: [session1]);

      expect(routineBase, isNot(equals(routineDiffId)));
      expect(routineBase, isNot(equals(routineDiffName)));
      expect(routineBase, isNot(equals(routineDiffSessions)));
    });

    test('copyWith should create a copy with updated values correctly', () {
      final originalRoutine = EntityMother.routine();
      final newSessions = [session1];

      final updatedRoutineName =
          originalRoutine.copyWith(name: "Updated Routine Name");
      final updatedRoutineSessions =
          originalRoutine.copyWith(sessions: newSessions);

      expect(updatedRoutineName.name, "Updated Routine Name");
      expect(updatedRoutineName.sessions, originalRoutine.sessions);

      expect(updatedRoutineSessions.name, originalRoutine.name);
      expect(updatedRoutineSessions.sessions, newSessions);

      expect(originalRoutine.name, 'Default Routine');
      expect(originalRoutine.sessions.length, 2);
    });
  });
}
