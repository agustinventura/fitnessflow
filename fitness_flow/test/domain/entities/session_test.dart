import 'package:flutter_test/flutter_test.dart';

import '../value_objects/mother/value_object_mother.dart';
import 'mother/entity_mother.dart';

void main() {
  group('Session Entity', () {
    final sessionId = ValueObjectMother.sessionId(value: 'session1');
    const sessionName = 'Leg Day';
    const order = 1;
    final exerciseItem1 = EntityMother.sessionItemExercise(
        exercise: EntityMother.exercise(
            id: ValueObjectMother.exerciseId(value: 'ex1'), name: 'Squat'));
    final exerciseItem2 = EntityMother.sessionItemExercise(
        exercise: EntityMother.exercise(
            id: ValueObjectMother.exerciseId(value: 'ex2'), name: 'Leg Press'));
    final restItem1 = EntityMother.sessionItemRest(
        restTime: ValueObjectMother.restTime(durationInSeconds: 120));
    final restItem2 = EntityMother.sessionItemRest(
        restTime: ValueObjectMother.restTime(durationInSeconds: 90));

    test('should create instance successfully with empty items list', () {
      final session = EntityMother.session(
        id: sessionId,
        name: sessionName,
        items: [],
        order: order,
      );

      expect(session, isNotNull);
      expect(session.id, sessionId);
      expect(session.name, sessionName);
      expect(session.items, isEmpty);
      expect(session.order, order);
    });

    test('should create instance successfully with specific items list', () {
      final items = [exerciseItem1, restItem1, exerciseItem2, restItem2];
      final session = EntityMother.session(items: items);

      expect(session, isNotNull);
      expect(session.items, items);
      expect(session.items.length, 4);
    });

    test('should support value equality', () {
      final items = [exerciseItem1, restItem1];
      final sessionA = EntityMother.session(
          id: ValueObjectMother.sessionId(value: 'eq_id'),
          name: 'Push Day',
          items: items,
          order: 1);
      final sessionB = EntityMother.session(
          id: ValueObjectMother.sessionId(value: 'eq_id'),
          name: 'Push Day',
          items: items,
          order: 1);

      expect(sessionA, equals(sessionB));
      expect(sessionA.hashCode, equals(sessionB.hashCode));
    });

    test('should have distinct inequality when props differ using copyWith',
        () {
      final sessionBase = EntityMother.session();

      final sessionDiffId = sessionBase.copyWith(
          id: ValueObjectMother.sessionId(value: 'neq_id_diff'));
      final sessionDiffName = sessionBase.copyWith(name: 'Pull Day');
      final sessionDiffOrder = sessionBase.copyWith(order: 3);
      final sessionDiffItems = sessionBase.copyWith(items: [exerciseItem1]);

      expect(sessionBase, isNot(equals(sessionDiffId)));
      expect(sessionBase, isNot(equals(sessionDiffName)));
      expect(sessionBase, isNot(equals(sessionDiffOrder)));
      expect(sessionBase, isNot(equals(sessionDiffItems)));
    });

    test('copyWith should create a copy with updated values correctly', () {
      final originalSession = EntityMother.session();
      final newItems = [exerciseItem1];

      final updatedSessionName =
          originalSession.copyWith(name: "Heavy Leg Day");
      final updatedSessionItems = originalSession.copyWith(items: newItems);

      expect(updatedSessionName.name, "Heavy Leg Day");
      expect(updatedSessionName.items, originalSession.items);

      expect(updatedSessionItems.name, originalSession.name);
      expect(updatedSessionItems.items, newItems);

      expect(originalSession.name, 'Default Session');
      expect(originalSession.items.length, 3);
    });
  });
}
