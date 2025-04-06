// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weight.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Weight implements DiagnosticableTreeMixin {
  double get value;

  WeightUnit get unit;

  /// Create a copy of Weight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeightCopyWith<Weight> get copyWith =>
      _$WeightCopyWithImpl<Weight>(this as Weight, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Weight'))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('unit', unit));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Weight &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, unit);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Weight(value: $value, unit: $unit)';
  }
}

/// @nodoc
abstract mixin class $WeightCopyWith<$Res> {
  factory $WeightCopyWith(Weight value, $Res Function(Weight) _then) =
      _$WeightCopyWithImpl;

  @useResult
  $Res call({double value, WeightUnit unit});
}

/// @nodoc
class _$WeightCopyWithImpl<$Res> implements $WeightCopyWith<$Res> {
  _$WeightCopyWithImpl(this._self, this._then);

  final Weight _self;
  final $Res Function(Weight) _then;

  /// Create a copy of Weight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? unit = null,
  }) {
    return _then(_self.copyWith(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as WeightUnit,
    ));
  }
}

/// @nodoc

class _Weight extends Weight with DiagnosticableTreeMixin {
  _Weight({required final double value, final WeightUnit unit = WeightUnit.kg})
      : super._(value: value, unit: unit);

  /// Create a copy of Weight
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeightCopyWith<_Weight> get copyWith =>
      __$WeightCopyWithImpl<_Weight>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Weight'))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('unit', unit));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Weight &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, unit);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Weight(value: $value, unit: $unit)';
  }
}

/// @nodoc
abstract mixin class _$WeightCopyWith<$Res> implements $WeightCopyWith<$Res> {
  factory _$WeightCopyWith(_Weight value, $Res Function(_Weight) _then) =
      __$WeightCopyWithImpl;

  @override
  @useResult
  $Res call({double value, WeightUnit unit});
}

/// @nodoc
class __$WeightCopyWithImpl<$Res> implements _$WeightCopyWith<$Res> {
  __$WeightCopyWithImpl(this._self, this._then);

  final _Weight _self;
  final $Res Function(_Weight) _then;

  /// Create a copy of Weight
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
    Object? unit = null,
  }) {
    return _then(_Weight(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as WeightUnit,
    ));
  }
}

// dart format on
