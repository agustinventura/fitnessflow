// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_item_to_session_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddItemToSessionParams {
  RoutineId get routineId;
  SessionId get sessionId;
  SessionItemParams get itemData;

  /// Create a copy of AddItemToSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddItemToSessionParamsCopyWith<AddItemToSessionParams> get copyWith =>
      _$AddItemToSessionParamsCopyWithImpl<AddItemToSessionParams>(
          this as AddItemToSessionParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddItemToSessionParams &&
            (identical(other.routineId, routineId) ||
                other.routineId == routineId) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.itemData, itemData) ||
                other.itemData == itemData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, routineId, sessionId, itemData);

  @override
  String toString() {
    return 'AddItemToSessionParams(routineId: $routineId, sessionId: $sessionId, itemData: $itemData)';
  }
}

/// @nodoc
abstract mixin class $AddItemToSessionParamsCopyWith<$Res> {
  factory $AddItemToSessionParamsCopyWith(AddItemToSessionParams value,
          $Res Function(AddItemToSessionParams) _then) =
      _$AddItemToSessionParamsCopyWithImpl;
  @useResult
  $Res call(
      {RoutineId routineId, SessionId sessionId, SessionItemParams itemData});

  $RoutineIdCopyWith<$Res> get routineId;
  $SessionIdCopyWith<$Res> get sessionId;
  $SessionItemParamsCopyWith<$Res> get itemData;
}

/// @nodoc
class _$AddItemToSessionParamsCopyWithImpl<$Res>
    implements $AddItemToSessionParamsCopyWith<$Res> {
  _$AddItemToSessionParamsCopyWithImpl(this._self, this._then);

  final AddItemToSessionParams _self;
  final $Res Function(AddItemToSessionParams) _then;

  /// Create a copy of AddItemToSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routineId = null,
    Object? sessionId = null,
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
      itemData: null == itemData
          ? _self.itemData
          : itemData // ignore: cast_nullable_to_non_nullable
              as SessionItemParams,
    ));
  }

  /// Create a copy of AddItemToSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoutineIdCopyWith<$Res> get routineId {
    return $RoutineIdCopyWith<$Res>(_self.routineId, (value) {
      return _then(_self.copyWith(routineId: value));
    });
  }

  /// Create a copy of AddItemToSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionIdCopyWith<$Res> get sessionId {
    return $SessionIdCopyWith<$Res>(_self.sessionId, (value) {
      return _then(_self.copyWith(sessionId: value));
    });
  }

  /// Create a copy of AddItemToSessionParams
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

class _AddItemToSessionParams implements AddItemToSessionParams {
  const _AddItemToSessionParams(
      {required this.routineId,
      required this.sessionId,
      required this.itemData});

  @override
  final RoutineId routineId;
  @override
  final SessionId sessionId;
  @override
  final SessionItemParams itemData;

  /// Create a copy of AddItemToSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddItemToSessionParamsCopyWith<_AddItemToSessionParams> get copyWith =>
      __$AddItemToSessionParamsCopyWithImpl<_AddItemToSessionParams>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddItemToSessionParams &&
            (identical(other.routineId, routineId) ||
                other.routineId == routineId) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.itemData, itemData) ||
                other.itemData == itemData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, routineId, sessionId, itemData);

  @override
  String toString() {
    return 'AddItemToSessionParams(routineId: $routineId, sessionId: $sessionId, itemData: $itemData)';
  }
}

/// @nodoc
abstract mixin class _$AddItemToSessionParamsCopyWith<$Res>
    implements $AddItemToSessionParamsCopyWith<$Res> {
  factory _$AddItemToSessionParamsCopyWith(_AddItemToSessionParams value,
          $Res Function(_AddItemToSessionParams) _then) =
      __$AddItemToSessionParamsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {RoutineId routineId, SessionId sessionId, SessionItemParams itemData});

  @override
  $RoutineIdCopyWith<$Res> get routineId;
  @override
  $SessionIdCopyWith<$Res> get sessionId;
  @override
  $SessionItemParamsCopyWith<$Res> get itemData;
}

/// @nodoc
class __$AddItemToSessionParamsCopyWithImpl<$Res>
    implements _$AddItemToSessionParamsCopyWith<$Res> {
  __$AddItemToSessionParamsCopyWithImpl(this._self, this._then);

  final _AddItemToSessionParams _self;
  final $Res Function(_AddItemToSessionParams) _then;

  /// Create a copy of AddItemToSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? routineId = null,
    Object? sessionId = null,
    Object? itemData = null,
  }) {
    return _then(_AddItemToSessionParams(
      routineId: null == routineId
          ? _self.routineId
          : routineId // ignore: cast_nullable_to_non_nullable
              as RoutineId,
      sessionId: null == sessionId
          ? _self.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as SessionId,
      itemData: null == itemData
          ? _self.itemData
          : itemData // ignore: cast_nullable_to_non_nullable
              as SessionItemParams,
    ));
  }

  /// Create a copy of AddItemToSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoutineIdCopyWith<$Res> get routineId {
    return $RoutineIdCopyWith<$Res>(_self.routineId, (value) {
      return _then(_self.copyWith(routineId: value));
    });
  }

  /// Create a copy of AddItemToSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionIdCopyWith<$Res> get sessionId {
    return $SessionIdCopyWith<$Res>(_self.sessionId, (value) {
      return _then(_self.copyWith(sessionId: value));
    });
  }

  /// Create a copy of AddItemToSessionParams
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
