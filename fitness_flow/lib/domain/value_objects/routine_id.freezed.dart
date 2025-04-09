// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routine_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RoutineId implements DiagnosticableTreeMixin {
  String get value;

  /// Create a copy of RoutineId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RoutineIdCopyWith<RoutineId> get copyWith =>
      _$RoutineIdCopyWithImpl<RoutineId>(this as RoutineId, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'RoutineId'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RoutineId &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoutineId(value: $value)';
  }
}

/// @nodoc
abstract mixin class $RoutineIdCopyWith<$Res> {
  factory $RoutineIdCopyWith(RoutineId value, $Res Function(RoutineId) _then) =
      _$RoutineIdCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$RoutineIdCopyWithImpl<$Res> implements $RoutineIdCopyWith<$Res> {
  _$RoutineIdCopyWithImpl(this._self, this._then);

  final RoutineId _self;
  final $Res Function(RoutineId) _then;

  /// Create a copy of RoutineId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_self.copyWith(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _RoutineId with DiagnosticableTreeMixin implements RoutineId {
  const _RoutineId(this.value);

  @override
  final String value;

  /// Create a copy of RoutineId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RoutineIdCopyWith<_RoutineId> get copyWith =>
      __$RoutineIdCopyWithImpl<_RoutineId>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'RoutineId'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RoutineId &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoutineId(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$RoutineIdCopyWith<$Res>
    implements $RoutineIdCopyWith<$Res> {
  factory _$RoutineIdCopyWith(
          _RoutineId value, $Res Function(_RoutineId) _then) =
      __$RoutineIdCopyWithImpl;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$RoutineIdCopyWithImpl<$Res> implements _$RoutineIdCopyWith<$Res> {
  __$RoutineIdCopyWithImpl(this._self, this._then);

  final _RoutineId _self;
  final $Res Function(_RoutineId) _then;

  /// Create a copy of RoutineId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_RoutineId(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
