import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_id.freezed.dart';

@freezed
abstract class SessionId with _$SessionId {
  const SessionId._();

  const factory SessionId(String value) = _SessionId;
}
