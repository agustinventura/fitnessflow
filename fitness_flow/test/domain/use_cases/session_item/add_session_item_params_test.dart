import 'package:fitness_flow/domain/use_cases/session_item/add_session_item_params.dart';
import 'package:flutter_test/flutter_test.dart';

import '../mother/dto_mother.dart';

void main() {
  group('AddSessionItemParams Union DTO', () {
    final tExerciseParams = DtoMother.addExerciseParams(name: 'Test Exercise');
    final tRestParams = DtoMother.addRestParams(duration: 90);

    test('should create exercise instance successfully', () {
      final item = AddSessionItemParams.exercise(params: tExerciseParams);

      expect(item, isNotNull);
      expect(item, isA<ExerciseSessionItemParams>());
      final exerciseItem = item as ExerciseSessionItemParams;
      expect(exerciseItem.params, equals(tExerciseParams));
    });

    test('should create rest instance successfully', () {
      final item = AddSessionItemParams.rest(params: tRestParams);

      expect(item, isNotNull);
      expect(item, isA<RestSessionItemParams>());
      final restItem = item as RestSessionItemParams;
      expect(restItem.params, equals(tRestParams));
    });

    test('should support value equality for same type', () {
      final itemEx1 = AddSessionItemParams.exercise(params: tExerciseParams);
      final itemEx2 = AddSessionItemParams.exercise(params: tExerciseParams);
      final itemRest1 = AddSessionItemParams.rest(params: tRestParams);
      final itemRest2 = AddSessionItemParams.rest(params: tRestParams);

      expect(itemEx1, equals(itemEx2));
      expect(itemEx1.hashCode, equals(itemEx2.hashCode));
      expect(itemRest1, equals(itemRest2));
      expect(itemRest1.hashCode, equals(itemRest2.hashCode));
    });

    test('should have distinct inequality for different types', () {
      final itemEx = AddSessionItemParams.exercise(params: tExerciseParams);
      final itemRest = AddSessionItemParams.rest(params: tRestParams);

      expect(itemEx, isNot(equals(itemRest)));
    });

    test(
        'should have distinct inequality for different content within same type',
        () {
      final itemEx1 = AddSessionItemParams.exercise(params: tExerciseParams);
      final itemEx2 = AddSessionItemParams.exercise(
          params: DtoMother.addExerciseParams(name: 'Different Exercise'));
      final itemRest1 = AddSessionItemParams.rest(params: tRestParams);
      final itemRest2 = AddSessionItemParams.rest(
          params: DtoMother.addRestParams(duration: 120));

      expect(itemEx1, isNot(equals(itemEx2)));
      expect(itemRest1, isNot(equals(itemRest2)));
    });
  });
}
