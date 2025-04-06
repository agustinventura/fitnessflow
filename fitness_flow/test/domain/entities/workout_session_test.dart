import 'package:flutter_test/flutter_test.dart';

import '../value_objects/mother/value_object_mother.dart';
import 'mother/entity_mother.dart';

void main() {
  group('WorkoutSession Entity', () {
    final workoutSessionId = ValueObjectMother.workoutSessionId(value: 'ws1');
    final routineId = ValueObjectMother.routineId(value: 'r1');
    final sessionId = ValueObjectMother.sessionId(value: 's1');
    const routineName = 'My Routine';
    const sessionName = 'Push Day';
    final startTime = DateTime(2024, 1, 10, 18, 0, 0);
    final performedExercisesList = [
      ValueObjectMother.performedExercise(
          exerciseName: 'Bench Press',
          seriesCompleted: 3,
          weight: ValueObjectMother.weight(value: 80.0)),
      ValueObjectMother.performedExercise(
          exerciseName: 'Overhead Press',
          seriesCompleted: 3,
          weight: ValueObjectMother.weight(value: 50.0)),
    ];
    const isCompleted = true;

    final endTime = DateTime(2024, 1, 10, 19, 15, 0);
    final duration = endTime.difference(startTime);
    const notes = 'Felt strong today!';

    test('should create instance successfully with only required fields', () {
      final workoutSession = EntityMother.workoutSession(
        id: workoutSessionId,
        originalRoutineId: routineId,
        originalSessionId: sessionId,
        routineName: routineName,
        sessionName: sessionName,
        startTime: startTime,
        performedExercises: performedExercisesList,
        isCompleted: false,
        endTime: null,
        duration: null,
        notes: null,
      );

      expect(workoutSession, isNotNull);
      expect(workoutSession.id, workoutSessionId);
      expect(workoutSession.originalRoutineId, routineId);
      expect(workoutSession.originalSessionId, sessionId);
      expect(workoutSession.isCompleted, false);
      expect(workoutSession.endTime, isNull);
      expect(workoutSession.duration, isNull);
      expect(workoutSession.notes, isNull);
    });

    test('should create instance successfully with all fields provided', () {
      final workoutSession = EntityMother.workoutSession(
        id: workoutSessionId,
        originalRoutineId: routineId,
        originalSessionId: sessionId,
        routineName: routineName,
        sessionName: sessionName,
        startTime: startTime,
        performedExercises: performedExercisesList,
        isCompleted: isCompleted,
        endTime: endTime,
        duration: duration,
        notes: notes,
      );

      expect(workoutSession, isNotNull);
      expect(workoutSession.endTime, endTime);
      expect(workoutSession.duration, duration);
      expect(workoutSession.notes, notes);
      expect(workoutSession.isCompleted, isCompleted);
    });

    test('should support value equality', () {
      final sessionA = EntityMother.workoutSession(
          id: ValueObjectMother.workoutSessionId(value: 'eq_id'),
          notes: 'Note A');
      final sessionB = EntityMother.workoutSession(
          id: ValueObjectMother.workoutSessionId(value: 'eq_id'),
          notes: 'Note A');

      expect(sessionA, equals(sessionB));
      expect(sessionA.hashCode, equals(sessionB.hashCode));
    });

    test('should have distinct inequality when props differ using copyWith',
        () {
      final sessionBase = EntityMother.workoutSession();

      final sessionDiffId = sessionBase.copyWith(
          id: ValueObjectMother.workoutSessionId(value: 'neq_id_diff'));
      final sessionDiffStartTime =
          sessionBase.copyWith(startTime: DateTime(2025));
      final sessionDiffPerformed = sessionBase.copyWith(
          performedExercises: [ValueObjectMother.performedExercise()]);
      final sessionDiffCompleted = sessionBase.copyWith(isCompleted: false);
      final sessionDiffEndTime = sessionBase.copyWith(endTime: null);
      final sessionDiffNotes = sessionBase.copyWith(notes: 'Different note');

      expect(sessionBase, isNot(equals(sessionDiffId)));
      expect(sessionBase, isNot(equals(sessionDiffStartTime)));
      expect(sessionBase, isNot(equals(sessionDiffPerformed)));
      expect(sessionBase, isNot(equals(sessionDiffCompleted)));
      expect(sessionBase, isNot(equals(sessionDiffEndTime)));
      expect(sessionBase, isNot(equals(sessionDiffNotes)));
    });

    test('copyWith should create a copy with updated values correctly', () {
      final originalSession = EntityMother.workoutSession(
          endTime: null, duration: null, notes: null, isCompleted: false);

      final newEndTime =
          originalSession.startTime.add(const Duration(minutes: 90));
      final newDuration = const Duration(minutes: 90);
      const newNotes = "Session finished.";
      final newPerformed = [
        ValueObjectMother.performedExercise(exerciseName: 'New Exercise')
      ];

      final updatedSession = originalSession.copyWith(
        endTime: newEndTime,
        duration: newDuration,
        notes: newNotes,
        isCompleted: true,
        performedExercises: newPerformed,
      );
      final clearedNotesSession = updatedSession.copyWith(notes: null);

      expect(updatedSession.endTime, newEndTime);
      expect(updatedSession.duration, newDuration);
      expect(updatedSession.notes, newNotes);
      expect(updatedSession.isCompleted, true);
      expect(updatedSession.performedExercises, newPerformed);
      expect(clearedNotesSession.notes, isNull);
      expect(clearedNotesSession.endTime, newEndTime);
      expect(originalSession.endTime, isNull);
      expect(originalSession.duration, isNull);
      expect(originalSession.notes, isNull);
      expect(originalSession.isCompleted, false);
    });
  });
}
