import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_rest_params.freezed.dart';

@freezed
abstract class AddRestParams with _$AddRestParams {
  const factory AddRestParams({
    required int durationInSeconds,
  }) = _AddRestParams;
}
