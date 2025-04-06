// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_goal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkoutGoal implements DiagnosticableTreeMixin {
  int get quantity;

  WorkoutUnit get unit;

  /// Create a copy of WorkoutGoal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WorkoutGoalCopyWith<WorkoutGoal> get copyWith =>
      _$WorkoutGoalCopyWithImpl<WorkoutGoal>(this as WorkoutGoal, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutGoal'))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('unit', unit));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WorkoutGoal &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quantity, unit);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutGoal(quantity: $quantity, unit: $unit)';
  }
}

/// @nodoc
abstract mixin class $WorkoutGoalCopyWith<$Res> {
  factory $WorkoutGoalCopyWith(
          WorkoutGoal value, $Res Function(WorkoutGoal) _then) =
      _$WorkoutGoalCopyWithImpl;

  @useResult
  $Res call({int quantity, WorkoutUnit unit});
}

/// @nodoc
class _$WorkoutGoalCopyWithImpl<$Res> implements $WorkoutGoalCopyWith<$Res> {
  _$WorkoutGoalCopyWithImpl(this._self, this._then);

  final WorkoutGoal _self;
  final $Res Function(WorkoutGoal) _then;

  /// Create a copy of WorkoutGoal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? unit = null,
  }) {
    return _then(_self.copyWith(
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as WorkoutUnit,
    ));
  }
}

/// @nodoc

class _WorkoutGoal extends WorkoutGoal with DiagnosticableTreeMixin {
  const _WorkoutGoal({required this.quantity, required this.unit})
      : assert(quantity > 0, 'Amount must be positive'),
        super._();

  @override
  final int quantity;
  @override
  final WorkoutUnit unit;

  /// Create a copy of WorkoutGoal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WorkoutGoalCopyWith<_WorkoutGoal> get copyWith =>
      __$WorkoutGoalCopyWithImpl<_WorkoutGoal>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutGoal'))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('unit', unit));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkoutGoal &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quantity, unit);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutGoal(quantity: $quantity, unit: $unit)';
  }
}

/// @nodoc
abstract mixin class _$WorkoutGoalCopyWith<$Res>
    implements $WorkoutGoalCopyWith<$Res> {
  factory _$WorkoutGoalCopyWith(
          _WorkoutGoal value, $Res Function(_WorkoutGoal) _then) =
      __$WorkoutGoalCopyWithImpl;

  @override
  @useResult
  $Res call({int quantity, WorkoutUnit unit});
}

/// @nodoc
class __$WorkoutGoalCopyWithImpl<$Res> implements _$WorkoutGoalCopyWith<$Res> {
  __$WorkoutGoalCopyWithImpl(this._self, this._then);

  final _WorkoutGoal _self;
  final $Res Function(_WorkoutGoal) _then;

  /// Create a copy of WorkoutGoal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? quantity = null,
    Object? unit = null,
  }) {
    return _then(_WorkoutGoal(
      quantity: null == quantity
          ? _self.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as WorkoutUnit,
    ));
  }
}

// dart format on
