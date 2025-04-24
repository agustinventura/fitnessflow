import 'package:freezed_annotation/freezed_annotation.dart';

part 'rest_params.freezed.dart';

@freezed
abstract class RestParams with _$RestParams {
  const factory RestParams({
    required int durationInSeconds,
  }) = _AddRestParams;
}
