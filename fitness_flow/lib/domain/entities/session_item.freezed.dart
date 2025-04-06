// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SessionItem {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SessionItem);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SessionItem()';
  }
}

/// @nodoc
class $SessionItemCopyWith<$Res> {
  $SessionItemCopyWith(SessionItem _, $Res Function(SessionItem) __);
}

/// @nodoc

class ExerciseSessionItem extends SessionItem {
  const ExerciseSessionItem({required this.exercise}) : super._();

  final Exercise exercise;

  /// Create a copy of SessionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExerciseSessionItemCopyWith<ExerciseSessionItem> get copyWith =>
      _$ExerciseSessionItemCopyWithImpl<ExerciseSessionItem>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExerciseSessionItem &&
            (identical(other.exercise, exercise) ||
                other.exercise == exercise));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exercise);

  @override
  String toString() {
    return 'SessionItem.exercise(exercise: $exercise)';
  }
}

/// @nodoc
abstract mixin class $ExerciseSessionItemCopyWith<$Res>
    implements $SessionItemCopyWith<$Res> {
  factory $ExerciseSessionItemCopyWith(
          ExerciseSessionItem value, $Res Function(ExerciseSessionItem) _then) =
      _$ExerciseSessionItemCopyWithImpl;

  @useResult
  $Res call({Exercise exercise});

  $ExerciseCopyWith<$Res> get exercise;
}

/// @nodoc
class _$ExerciseSessionItemCopyWithImpl<$Res>
    implements $ExerciseSessionItemCopyWith<$Res> {
  _$ExerciseSessionItemCopyWithImpl(this._self, this._then);

  final ExerciseSessionItem _self;
  final $Res Function(ExerciseSessionItem) _then;

  /// Create a copy of SessionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? exercise = null,
  }) {
    return _then(ExerciseSessionItem(
      exercise: null == exercise
          ? _self.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as Exercise,
    ));
  }

  /// Create a copy of SessionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExerciseCopyWith<$Res> get exercise {
    return $ExerciseCopyWith<$Res>(_self.exercise, (value) {
      return _then(_self.copyWith(exercise: value));
    });
  }
}

/// @nodoc

class RestSessionItem extends SessionItem {
  const RestSessionItem({required this.restTime}) : super._();

  final RestTime restTime;

  /// Create a copy of SessionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RestSessionItemCopyWith<RestSessionItem> get copyWith =>
      _$RestSessionItemCopyWithImpl<RestSessionItem>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RestSessionItem &&
            (identical(other.restTime, restTime) ||
                other.restTime == restTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, restTime);

  @override
  String toString() {
    return 'SessionItem.rest(restTime: $restTime)';
  }
}

/// @nodoc
abstract mixin class $RestSessionItemCopyWith<$Res>
    implements $SessionItemCopyWith<$Res> {
  factory $RestSessionItemCopyWith(
          RestSessionItem value, $Res Function(RestSessionItem) _then) =
      _$RestSessionItemCopyWithImpl;

  @useResult
  $Res call({RestTime restTime});

  $RestTimeCopyWith<$Res> get restTime;
}

/// @nodoc
class _$RestSessionItemCopyWithImpl<$Res>
    implements $RestSessionItemCopyWith<$Res> {
  _$RestSessionItemCopyWithImpl(this._self, this._then);

  final RestSessionItem _self;
  final $Res Function(RestSessionItem) _then;

  /// Create a copy of SessionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? restTime = null,
  }) {
    return _then(RestSessionItem(
      restTime: null == restTime
          ? _self.restTime
          : restTime // ignore: cast_nullable_to_non_nullable
              as RestTime,
    ));
  }

  /// Create a copy of SessionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RestTimeCopyWith<$Res> get restTime {
    return $RestTimeCopyWith<$Res>(_self.restTime, (value) {
      return _then(_self.copyWith(restTime: value));
    });
  }
}

// dart format on
