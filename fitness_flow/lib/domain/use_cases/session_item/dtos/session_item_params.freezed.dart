// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_item_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SessionItemParams {
  Object get params;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SessionItemParams &&
            const DeepCollectionEquality().equals(other.params, params));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(params));

  @override
  String toString() {
    return 'SessionItemParams(params: $params)';
  }
}

/// @nodoc
class $SessionItemParamsCopyWith<$Res> {
  $SessionItemParamsCopyWith(
      SessionItemParams _, $Res Function(SessionItemParams) __);
}

/// @nodoc

class ExerciseSessionItemParams implements SessionItemParams {
  const ExerciseSessionItemParams({required this.params});

  @override
  final ExerciseParams params;

  /// Create a copy of SessionItemParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExerciseSessionItemParamsCopyWith<ExerciseSessionItemParams> get copyWith =>
      _$ExerciseSessionItemParamsCopyWithImpl<ExerciseSessionItemParams>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExerciseSessionItemParams &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @override
  String toString() {
    return 'SessionItemParams.exercise(params: $params)';
  }
}

/// @nodoc
abstract mixin class $ExerciseSessionItemParamsCopyWith<$Res>
    implements $SessionItemParamsCopyWith<$Res> {
  factory $ExerciseSessionItemParamsCopyWith(ExerciseSessionItemParams value,
          $Res Function(ExerciseSessionItemParams) _then) =
      _$ExerciseSessionItemParamsCopyWithImpl;
  @useResult
  $Res call({ExerciseParams params});

  $ExerciseParamsCopyWith<$Res> get params;
}

/// @nodoc
class _$ExerciseSessionItemParamsCopyWithImpl<$Res>
    implements $ExerciseSessionItemParamsCopyWith<$Res> {
  _$ExerciseSessionItemParamsCopyWithImpl(this._self, this._then);

  final ExerciseSessionItemParams _self;
  final $Res Function(ExerciseSessionItemParams) _then;

  /// Create a copy of SessionItemParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? params = null,
  }) {
    return _then(ExerciseSessionItemParams(
      params: null == params
          ? _self.params
          : params // ignore: cast_nullable_to_non_nullable
              as ExerciseParams,
    ));
  }

  /// Create a copy of SessionItemParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExerciseParamsCopyWith<$Res> get params {
    return $ExerciseParamsCopyWith<$Res>(_self.params, (value) {
      return _then(_self.copyWith(params: value));
    });
  }
}

/// @nodoc

class RestSessionItemParams implements SessionItemParams {
  const RestSessionItemParams({required this.params});

  @override
  final RestParams params;

  /// Create a copy of SessionItemParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RestSessionItemParamsCopyWith<RestSessionItemParams> get copyWith =>
      _$RestSessionItemParamsCopyWithImpl<RestSessionItemParams>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RestSessionItemParams &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @override
  String toString() {
    return 'SessionItemParams.rest(params: $params)';
  }
}

/// @nodoc
abstract mixin class $RestSessionItemParamsCopyWith<$Res>
    implements $SessionItemParamsCopyWith<$Res> {
  factory $RestSessionItemParamsCopyWith(RestSessionItemParams value,
          $Res Function(RestSessionItemParams) _then) =
      _$RestSessionItemParamsCopyWithImpl;
  @useResult
  $Res call({RestParams params});

  $RestParamsCopyWith<$Res> get params;
}

/// @nodoc
class _$RestSessionItemParamsCopyWithImpl<$Res>
    implements $RestSessionItemParamsCopyWith<$Res> {
  _$RestSessionItemParamsCopyWithImpl(this._self, this._then);

  final RestSessionItemParams _self;
  final $Res Function(RestSessionItemParams) _then;

  /// Create a copy of SessionItemParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? params = null,
  }) {
    return _then(RestSessionItemParams(
      params: null == params
          ? _self.params
          : params // ignore: cast_nullable_to_non_nullable
              as RestParams,
    ));
  }

  /// Create a copy of SessionItemParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RestParamsCopyWith<$Res> get params {
    return $RestParamsCopyWith<$Res>(_self.params, (value) {
      return _then(_self.copyWith(params: value));
    });
  }
}

// dart format on
