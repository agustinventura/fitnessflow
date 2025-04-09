// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExerciseId implements DiagnosticableTreeMixin {
  String get value;

  /// Create a copy of ExerciseId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExerciseIdCopyWith<ExerciseId> get copyWith =>
      _$ExerciseIdCopyWithImpl<ExerciseId>(this as ExerciseId, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ExerciseId'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExerciseId &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExerciseId(value: $value)';
  }
}

/// @nodoc
abstract mixin class $ExerciseIdCopyWith<$Res> {
  factory $ExerciseIdCopyWith(
          ExerciseId value, $Res Function(ExerciseId) _then) =
      _$ExerciseIdCopyWithImpl;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$ExerciseIdCopyWithImpl<$Res> implements $ExerciseIdCopyWith<$Res> {
  _$ExerciseIdCopyWithImpl(this._self, this._then);

  final ExerciseId _self;
  final $Res Function(ExerciseId) _then;

  /// Create a copy of ExerciseId
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

class _ExerciseId extends ExerciseId with DiagnosticableTreeMixin {
  const _ExerciseId(this.value) : super._();

  @override
  final String value;

  /// Create a copy of ExerciseId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExerciseIdCopyWith<_ExerciseId> get copyWith =>
      __$ExerciseIdCopyWithImpl<_ExerciseId>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ExerciseId'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExerciseId &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExerciseId(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$ExerciseIdCopyWith<$Res>
    implements $ExerciseIdCopyWith<$Res> {
  factory _$ExerciseIdCopyWith(
          _ExerciseId value, $Res Function(_ExerciseId) _then) =
      __$ExerciseIdCopyWithImpl;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$ExerciseIdCopyWithImpl<$Res> implements _$ExerciseIdCopyWith<$Res> {
  __$ExerciseIdCopyWithImpl(this._self, this._then);

  final _ExerciseId _self;
  final $Res Function(_ExerciseId) _then;

  /// Create a copy of ExerciseId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_ExerciseId(
      null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
