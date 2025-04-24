import 'package:fitness_flow/domain/use_cases/session_item/dtos/session_item_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_params.freezed.dart';

@freezed
abstract class SessionParams with _$SessionParams {
  const factory SessionParams({
    required String name,
    required List<SessionItemParams> items,
  }) = _AddSessionParams;
}
