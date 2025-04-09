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
  int get order;

  /// Create a copy of SessionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SessionItemCopyWith<SessionItem> get copyWith =>
      _$SessionItemCopyWithImpl<SessionItem>(this as SessionItem, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SessionItem &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  @override
  String toString() {
    return 'SessionItem(order: $order)';
  }
}

/// @nodoc
abstract mixin class $SessionItemCopyWith<$Res> {
  factory $SessionItemCopyWith(
          SessionItem value, $Res Function(SessionItem) _then) =
      _$SessionItemCopyWithImpl;
  @useResult
  $Res call({int order});
}

/// @nodoc
class _$SessionItemCopyWithImpl<$Res> implements $SessionItemCopyWith<$Res> {
  _$SessionItemCopyWithImpl(this._self, this._then);

  final SessionItem _self;
  final $Res Function(SessionItem) _then;

  /// Create a copy of SessionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_self.copyWith(
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class ExerciseSessionItem extends SessionItem {
  const ExerciseSessionItem({required this.exercise, required this.order})
      : super._();

  final Exercise exercise;
  @override
  final int order;

  /// Create a copy of SessionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
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
                other.exercise == exercise) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exercise, order);

  @override
  String toString() {
    return 'SessionItem.exercise(exercise: $exercise, order: $order)';
  }
}

/// @nodoc
abstract mixin class $ExerciseSessionItemCopyWith<$Res>
    implements $SessionItemCopyWith<$Res> {
  factory $ExerciseSessionItemCopyWith(
          ExerciseSessionItem value, $Res Function(ExerciseSessionItem) _then) =
      _$ExerciseSessionItemCopyWithImpl;
  @override
  @useResult
  $Res call({Exercise exercise, int order});

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
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? exercise = null,
    Object? order = null,
  }) {
    return _then(ExerciseSessionItem(
      exercise: null == exercise
          ? _self.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as Exercise,
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
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
  const RestSessionItem({required this.restTime, required this.order})
      : super._();

  final RestTime restTime;
  @override
  final int order;

  /// Create a copy of SessionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
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
                other.restTime == restTime) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, restTime, order);

  @override
  String toString() {
    return 'SessionItem.rest(restTime: $restTime, order: $order)';
  }
}

/// @nodoc
abstract mixin class $RestSessionItemCopyWith<$Res>
    implements $SessionItemCopyWith<$Res> {
  factory $RestSessionItemCopyWith(
          RestSessionItem value, $Res Function(RestSessionItem) _then) =
      _$RestSessionItemCopyWithImpl;
  @override
  @useResult
  $Res call({RestTime restTime, int order});

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
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? restTime = null,
    Object? order = null,
  }) {
    return _then(RestSessionItem(
      restTime: null == restTime
          ? _self.restTime
          : restTime // ignore: cast_nullable_to_non_nullable
              as RestTime,
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
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
