// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_item_from_session_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteItemFromSessionParams {
  RoutineId get routineId;
  SessionId get sessionId;
  int get itemOrder;

  /// Create a copy of DeleteItemFromSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeleteItemFromSessionParamsCopyWith<DeleteItemFromSessionParams>
      get copyWith => _$DeleteItemFromSessionParamsCopyWithImpl<
              DeleteItemFromSessionParams>(
          this as DeleteItemFromSessionParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteItemFromSessionParams &&
            (identical(other.routineId, routineId) ||
                other.routineId == routineId) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.itemOrder, itemOrder) ||
                other.itemOrder == itemOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, routineId, sessionId, itemOrder);

  @override
  String toString() {
    return 'DeleteItemFromSessionParams(routineId: $routineId, sessionId: $sessionId, itemOrder: $itemOrder)';
  }
}

/// @nodoc
abstract mixin class $DeleteItemFromSessionParamsCopyWith<$Res> {
  factory $DeleteItemFromSessionParamsCopyWith(
          DeleteItemFromSessionParams value,
          $Res Function(DeleteItemFromSessionParams) _then) =
      _$DeleteItemFromSessionParamsCopyWithImpl;
  @useResult
  $Res call({RoutineId routineId, SessionId sessionId, int itemOrder});

  $RoutineIdCopyWith<$Res> get routineId;
  $SessionIdCopyWith<$Res> get sessionId;
}

/// @nodoc
class _$DeleteItemFromSessionParamsCopyWithImpl<$Res>
    implements $DeleteItemFromSessionParamsCopyWith<$Res> {
  _$DeleteItemFromSessionParamsCopyWithImpl(this._self, this._then);

  final DeleteItemFromSessionParams _self;
  final $Res Function(DeleteItemFromSessionParams) _then;

  /// Create a copy of DeleteItemFromSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routineId = null,
    Object? sessionId = null,
    Object? itemOrder = null,
  }) {
    return _then(_self.copyWith(
      routineId: null == routineId
          ? _self.routineId
          : routineId // ignore: cast_nullable_to_non_nullable
              as RoutineId,
      sessionId: null == sessionId
          ? _self.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as SessionId,
      itemOrder: null == itemOrder
          ? _self.itemOrder
          : itemOrder // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of DeleteItemFromSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoutineIdCopyWith<$Res> get routineId {
    return $RoutineIdCopyWith<$Res>(_self.routineId, (value) {
      return _then(_self.copyWith(routineId: value));
    });
  }

  /// Create a copy of DeleteItemFromSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionIdCopyWith<$Res> get sessionId {
    return $SessionIdCopyWith<$Res>(_self.sessionId, (value) {
      return _then(_self.copyWith(sessionId: value));
    });
  }
}

/// @nodoc

class _DeleteItemFromSessionParams implements DeleteItemFromSessionParams {
  const _DeleteItemFromSessionParams(
      {required this.routineId,
      required this.sessionId,
      required this.itemOrder});

  @override
  final RoutineId routineId;
  @override
  final SessionId sessionId;
  @override
  final int itemOrder;

  /// Create a copy of DeleteItemFromSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeleteItemFromSessionParamsCopyWith<_DeleteItemFromSessionParams>
      get copyWith => __$DeleteItemFromSessionParamsCopyWithImpl<
          _DeleteItemFromSessionParams>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteItemFromSessionParams &&
            (identical(other.routineId, routineId) ||
                other.routineId == routineId) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.itemOrder, itemOrder) ||
                other.itemOrder == itemOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, routineId, sessionId, itemOrder);

  @override
  String toString() {
    return 'DeleteItemFromSessionParams(routineId: $routineId, sessionId: $sessionId, itemOrder: $itemOrder)';
  }
}

/// @nodoc
abstract mixin class _$DeleteItemFromSessionParamsCopyWith<$Res>
    implements $DeleteItemFromSessionParamsCopyWith<$Res> {
  factory _$DeleteItemFromSessionParamsCopyWith(
          _DeleteItemFromSessionParams value,
          $Res Function(_DeleteItemFromSessionParams) _then) =
      __$DeleteItemFromSessionParamsCopyWithImpl;
  @override
  @useResult
  $Res call({RoutineId routineId, SessionId sessionId, int itemOrder});

  @override
  $RoutineIdCopyWith<$Res> get routineId;
  @override
  $SessionIdCopyWith<$Res> get sessionId;
}

/// @nodoc
class __$DeleteItemFromSessionParamsCopyWithImpl<$Res>
    implements _$DeleteItemFromSessionParamsCopyWith<$Res> {
  __$DeleteItemFromSessionParamsCopyWithImpl(this._self, this._then);

  final _DeleteItemFromSessionParams _self;
  final $Res Function(_DeleteItemFromSessionParams) _then;

  /// Create a copy of DeleteItemFromSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? routineId = null,
    Object? sessionId = null,
    Object? itemOrder = null,
  }) {
    return _then(_DeleteItemFromSessionParams(
      routineId: null == routineId
          ? _self.routineId
          : routineId // ignore: cast_nullable_to_non_nullable
              as RoutineId,
      sessionId: null == sessionId
          ? _self.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as SessionId,
      itemOrder: null == itemOrder
          ? _self.itemOrder
          : itemOrder // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of DeleteItemFromSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoutineIdCopyWith<$Res> get routineId {
    return $RoutineIdCopyWith<$Res>(_self.routineId, (value) {
      return _then(_self.copyWith(routineId: value));
    });
  }

  /// Create a copy of DeleteItemFromSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionIdCopyWith<$Res> get sessionId {
    return $SessionIdCopyWith<$Res>(_self.sessionId, (value) {
      return _then(_self.copyWith(sessionId: value));
    });
  }
}

// dart format on
