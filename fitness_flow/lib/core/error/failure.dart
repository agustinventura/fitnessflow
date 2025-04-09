import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const Failure._();

  const factory Failure.database() = DatabaseFailure;

  const factory Failure.unexpected(String message) = UnexpectedFailure;
}
