import 'package:fitness_flow/domain/entities/session_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_objects/session_id.dart';

part 'session.freezed.dart';

@freezed
abstract class Session with _$Session {
  const Session._();

  factory Session({
    required SessionId id,
    required String name,
    required List<SessionItem> items,
    required int order,
  }) = _Session;
}
