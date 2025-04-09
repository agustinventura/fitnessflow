// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_exercise_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddExerciseParams {
  String get name;
  int get targetSeriesCount;
  int get goalQuantity;
  WorkoutUnit get goalUnit;
  double? get weightValue;
  int get restTimeInSeconds;

  /// Create a copy of AddExerciseParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddExerciseParamsCopyWith<AddExerciseParams> get copyWith =>
      _$AddExerciseParamsCopyWithImpl<AddExerciseParams>(
          this as AddExerciseParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddExerciseParams &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.targetSeriesCount, targetSeriesCount) ||
                other.targetSeriesCount == targetSeriesCount) &&
            (identical(other.goalQuantity, goalQuantity) ||
                other.goalQuantity == goalQuantity) &&
            (identical(other.goalUnit, goalUnit) ||
                other.goalUnit == goalUnit) &&
            (identical(other.weightValue, weightValue) ||
                other.weightValue == weightValue) &&
            (identical(other.restTimeInSeconds, restTimeInSeconds) ||
                other.restTimeInSeconds == restTimeInSeconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, targetSeriesCount,
      goalQuantity, goalUnit, weightValue, restTimeInSeconds);

  @override
  String toString() {
    return 'AddExerciseParams(name: $name, targetSeriesCount: $targetSeriesCount, goalQuantity: $goalQuantity, goalUnit: $goalUnit, weightValue: $weightValue, restTimeInSeconds: $restTimeInSeconds)';
  }
}

/// @nodoc
abstract mixin class $AddExerciseParamsCopyWith<$Res> {
  factory $AddExerciseParamsCopyWith(
          AddExerciseParams value, $Res Function(AddExerciseParams) _then) =
      _$AddExerciseParamsCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      int targetSeriesCount,
      int goalQuantity,
      WorkoutUnit goalUnit,
      double? weightValue,
      int restTimeInSeconds});
}

/// @nodoc
class _$AddExerciseParamsCopyWithImpl<$Res>
    implements $AddExerciseParamsCopyWith<$Res> {
  _$AddExerciseParamsCopyWithImpl(this._self, this._then);

  final AddExerciseParams _self;
  final $Res Function(AddExerciseParams) _then;

  /// Create a copy of AddExerciseParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? targetSeriesCount = null,
    Object? goalQuantity = null,
    Object? goalUnit = null,
    Object? weightValue = freezed,
    Object? restTimeInSeconds = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      targetSeriesCount: null == targetSeriesCount
          ? _self.targetSeriesCount
          : targetSeriesCount // ignore: cast_nullable_to_non_nullable
              as int,
      goalQuantity: null == goalQuantity
          ? _self.goalQuantity
          : goalQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      goalUnit: null == goalUnit
          ? _self.goalUnit
          : goalUnit // ignore: cast_nullable_to_non_nullable
              as WorkoutUnit,
      weightValue: freezed == weightValue
          ? _self.weightValue
          : weightValue // ignore: cast_nullable_to_non_nullable
              as double?,
      restTimeInSeconds: null == restTimeInSeconds
          ? _self.restTimeInSeconds
          : restTimeInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _AddExerciseParams implements AddExerciseParams {
  const _AddExerciseParams(
      {required this.name,
      required this.targetSeriesCount,
      required this.goalQuantity,
      required this.goalUnit,
      this.weightValue,
      required this.restTimeInSeconds});

  @override
  final String name;
  @override
  final int targetSeriesCount;
  @override
  final int goalQuantity;
  @override
  final WorkoutUnit goalUnit;
  @override
  final double? weightValue;
  @override
  final int restTimeInSeconds;

  /// Create a copy of AddExerciseParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddExerciseParamsCopyWith<_AddExerciseParams> get copyWith =>
      __$AddExerciseParamsCopyWithImpl<_AddExerciseParams>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddExerciseParams &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.targetSeriesCount, targetSeriesCount) ||
                other.targetSeriesCount == targetSeriesCount) &&
            (identical(other.goalQuantity, goalQuantity) ||
                other.goalQuantity == goalQuantity) &&
            (identical(other.goalUnit, goalUnit) ||
                other.goalUnit == goalUnit) &&
            (identical(other.weightValue, weightValue) ||
                other.weightValue == weightValue) &&
            (identical(other.restTimeInSeconds, restTimeInSeconds) ||
                other.restTimeInSeconds == restTimeInSeconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, targetSeriesCount,
      goalQuantity, goalUnit, weightValue, restTimeInSeconds);

  @override
  String toString() {
    return 'AddExerciseParams(name: $name, targetSeriesCount: $targetSeriesCount, goalQuantity: $goalQuantity, goalUnit: $goalUnit, weightValue: $weightValue, restTimeInSeconds: $restTimeInSeconds)';
  }
}

/// @nodoc
abstract mixin class _$AddExerciseParamsCopyWith<$Res>
    implements $AddExerciseParamsCopyWith<$Res> {
  factory _$AddExerciseParamsCopyWith(
          _AddExerciseParams value, $Res Function(_AddExerciseParams) _then) =
      __$AddExerciseParamsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      int targetSeriesCount,
      int goalQuantity,
      WorkoutUnit goalUnit,
      double? weightValue,
      int restTimeInSeconds});
}

/// @nodoc
class __$AddExerciseParamsCopyWithImpl<$Res>
    implements _$AddExerciseParamsCopyWith<$Res> {
  __$AddExerciseParamsCopyWithImpl(this._self, this._then);

  final _AddExerciseParams _self;
  final $Res Function(_AddExerciseParams) _then;

  /// Create a copy of AddExerciseParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? targetSeriesCount = null,
    Object? goalQuantity = null,
    Object? goalUnit = null,
    Object? weightValue = freezed,
    Object? restTimeInSeconds = null,
  }) {
    return _then(_AddExerciseParams(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      targetSeriesCount: null == targetSeriesCount
          ? _self.targetSeriesCount
          : targetSeriesCount // ignore: cast_nullable_to_non_nullable
              as int,
      goalQuantity: null == goalQuantity
          ? _self.goalQuantity
          : goalQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      goalUnit: null == goalUnit
          ? _self.goalUnit
          : goalUnit // ignore: cast_nullable_to_non_nullable
              as WorkoutUnit,
      weightValue: freezed == weightValue
          ? _self.weightValue
          : weightValue // ignore: cast_nullable_to_non_nullable
              as double?,
      restTimeInSeconds: null == restTimeInSeconds
          ? _self.restTimeInSeconds
          : restTimeInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
