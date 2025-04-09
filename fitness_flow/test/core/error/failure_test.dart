import 'package:fitness_flow/core/error/failure.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DatabaseFailure', () {
    test('should be a subclass of Failure', () {
      expect(const DatabaseFailure(), isA<Failure>());
      expect(const DatabaseFailure(), isA<DatabaseFailure>());
    });

    test('Instances of DatabaseFailure should be equal', () {
      expect(const DatabaseFailure(), equals(const DatabaseFailure()));
    });
  });
}
