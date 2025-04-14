import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const Failure._();

  const factory Failure.database([@Default('Database error') String message]) =
      DatabaseFailure;

  const factory Failure.notFound(
      [@Default('Resource not found') String message]) = NotFoundFailure;

  const factory Failure.save(
      [@Default('Save operation failed') String message]) = SaveFailure;

  const factory Failure.validation([@Default('Invalid data') String message]) =
      ValidationFailure;

  const factory Failure.unexpected(
      [@Default('Unexpected error') String message]) = UnexpectedFailure;
}
