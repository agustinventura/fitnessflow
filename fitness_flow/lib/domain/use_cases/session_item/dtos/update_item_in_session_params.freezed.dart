// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_item_in_session_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateItemInSessionParams {
  RoutineId get routineId;
  SessionId get sessionId;
  int get itemOrder;
  SessionItemParams get itemData;

  /// Create a copy of UpdateItemInSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateItemInSessionParamsCopyWith<UpdateItemInSessionParams> get copyWith =>
      _$UpdateItemInSessionParamsCopyWithImpl<UpdateItemInSessionParams>(
          this as UpdateItemInSessionParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateItemInSessionParams &&
            (identical(other.routineId, routineId) ||
                other.routineId == routineId) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.itemOrder, itemOrder) ||
                other.itemOrder == itemOrder) &&
            (identical(other.itemData, itemData) ||
                other.itemData == itemData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, routineId, sessionId, itemOrder, itemData);

  @override
  String toString() {
    return 'UpdateItemInSessionParams(routineId: $routineId, sessionId: $sessionId, itemOrder: $itemOrder, itemData: $itemData)';
  }
}

/// @nodoc
abstract mixin class $UpdateItemInSessionParamsCopyWith<$Res> {
  factory $UpdateItemInSessionParamsCopyWith(UpdateItemInSessionParams value,
          $Res Function(UpdateItemInSessionParams) _then) =
      _$UpdateItemInSessionParamsCopyWithImpl;
  @useResult
  $Res call(
      {RoutineId routineId,
      SessionId sessionId,
      int itemOrder,
      SessionItemParams itemData});

  $RoutineIdCopyWith<$Res> get routineId;
  $SessionIdCopyWith<$Res> get sessionId;
  $SessionItemParamsCopyWith<$Res> get itemData;
}

/// @nodoc
class _$UpdateItemInSessionParamsCopyWithImpl<$Res>
    implements $UpdateItemInSessionParamsCopyWith<$Res> {
  _$UpdateItemInSessionParamsCopyWithImpl(this._self, this._then);

  final UpdateItemInSessionParams _self;
  final $Res Function(UpdateItemInSessionParams) _then;

  /// Create a copy of UpdateItemInSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routineId = null,
    Object? sessionId = null,
    Object? itemOrder = null,
    Object? itemData = null,
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
      itemData: null == itemData
          ? _self.itemData
          : itemData // ignore: cast_nullable_to_non_nullable
              as SessionItemParams,
    ));
  }

  /// Create a copy of UpdateItemInSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoutineIdCopyWith<$Res> get routineId {
    return $RoutineIdCopyWith<$Res>(_self.routineId, (value) {
      return _then(_self.copyWith(routineId: value));
    });
  }

  /// Create a copy of UpdateItemInSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionIdCopyWith<$Res> get sessionId {
    return $SessionIdCopyWith<$Res>(_self.sessionId, (value) {
      return _then(_self.copyWith(sessionId: value));
    });
  }

  /// Create a copy of UpdateItemInSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionItemParamsCopyWith<$Res> get itemData {
    return $SessionItemParamsCopyWith<$Res>(_self.itemData, (value) {
      return _then(_self.copyWith(itemData: value));
    });
  }
}

/// @nodoc

class _UpdateItemInSessionParams implements UpdateItemInSessionParams {
  const _UpdateItemInSessionParams(
      {required this.routineId,
      required this.sessionId,
      required this.itemOrder,
      required this.itemData});

  @override
  final RoutineId routineId;
  @override
  final SessionId sessionId;
  @override
  final int itemOrder;
  @override
  final SessionItemParams itemData;

  /// Create a copy of UpdateItemInSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateItemInSessionParamsCopyWith<_UpdateItemInSessionParams>
      get copyWith =>
          __$UpdateItemInSessionParamsCopyWithImpl<_UpdateItemInSessionParams>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateItemInSessionParams &&
            (identical(other.routineId, routineId) ||
                other.routineId == routineId) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.itemOrder, itemOrder) ||
                other.itemOrder == itemOrder) &&
            (identical(other.itemData, itemData) ||
                other.itemData == itemData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, routineId, sessionId, itemOrder, itemData);

  @override
  String toString() {
    return 'UpdateItemInSessionParams(routineId: $routineId, sessionId: $sessionId, itemOrder: $itemOrder, itemData: $itemData)';
  }
}

/// @nodoc
abstract mixin class _$UpdateItemInSessionParamsCopyWith<$Res>
    implements $UpdateItemInSessionParamsCopyWith<$Res> {
  factory _$UpdateItemInSessionParamsCopyWith(_UpdateItemInSessionParams value,
          $Res Function(_UpdateItemInSessionParams) _then) =
      __$UpdateItemInSessionParamsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {RoutineId routineId,
      SessionId sessionId,
      int itemOrder,
      SessionItemParams itemData});

  @override
  $RoutineIdCopyWith<$Res> get routineId;
  @override
  $SessionIdCopyWith<$Res> get sessionId;
  @override
  $SessionItemParamsCopyWith<$Res> get itemData;
}

/// @nodoc
class __$UpdateItemInSessionParamsCopyWithImpl<$Res>
    implements _$UpdateItemInSessionParamsCopyWith<$Res> {
  __$UpdateItemInSessionParamsCopyWithImpl(this._self, this._then);

  final _UpdateItemInSessionParams _self;
  final $Res Function(_UpdateItemInSessionParams) _then;

  /// Create a copy of UpdateItemInSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? routineId = null,
    Object? sessionId = null,
    Object? itemOrder = null,
    Object? itemData = null,
  }) {
    return _then(_UpdateItemInSessionParams(
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
      itemData: null == itemData
          ? _self.itemData
          : itemData // ignore: cast_nullable_to_non_nullable
              as SessionItemParams,
    ));
  }

  /// Create a copy of UpdateItemInSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoutineIdCopyWith<$Res> get routineId {
    return $RoutineIdCopyWith<$Res>(_self.routineId, (value) {
      return _then(_self.copyWith(routineId: value));
    });
  }

  /// Create a copy of UpdateItemInSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionIdCopyWith<$Res> get sessionId {
    return $SessionIdCopyWith<$Res>(_self.sessionId, (value) {
      return _then(_self.copyWith(sessionId: value));
    });
  }

  /// Create a copy of UpdateItemInSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionItemParamsCopyWith<$Res> get itemData {
    return $SessionItemParamsCopyWith<$Res>(_self.itemData, (value) {
      return _then(_self.copyWith(itemData: value));
    });
  }
}

// dart format on
