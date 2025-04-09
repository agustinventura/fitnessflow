import 'package:fitness_flow/domain/use_cases/session_item/add_session_item_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_session_params.freezed.dart';

@freezed
abstract class AddSessionParams with _$AddSessionParams {
  const factory AddSessionParams({
    required String name,
    required List<AddSessionItemParams> items,
  }) = _AddSessionParams;
}
