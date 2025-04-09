// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_session_item_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddSessionItemParams {
  Object get params;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddSessionItemParams &&
            const DeepCollectionEquality().equals(other.params, params));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(params));

  @override
  String toString() {
    return 'AddSessionItemParams(params: $params)';
  }
}

/// @nodoc
class $AddSessionItemParamsCopyWith<$Res> {
  $AddSessionItemParamsCopyWith(
      AddSessionItemParams _, $Res Function(AddSessionItemParams) __);
}

/// @nodoc

class ExerciseSessionItemParams implements AddSessionItemParams {
  const ExerciseSessionItemParams({required this.params});

  @override
  final AddExerciseParams params;

  /// Create a copy of AddSessionItemParams
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
    return 'AddSessionItemParams.exercise(params: $params)';
  }
}

/// @nodoc
abstract mixin class $ExerciseSessionItemParamsCopyWith<$Res>
    implements $AddSessionItemParamsCopyWith<$Res> {
  factory $ExerciseSessionItemParamsCopyWith(ExerciseSessionItemParams value,
          $Res Function(ExerciseSessionItemParams) _then) =
      _$ExerciseSessionItemParamsCopyWithImpl;
  @useResult
  $Res call({AddExerciseParams params});

  $AddExerciseParamsCopyWith<$Res> get params;
}

/// @nodoc
class _$ExerciseSessionItemParamsCopyWithImpl<$Res>
    implements $ExerciseSessionItemParamsCopyWith<$Res> {
  _$ExerciseSessionItemParamsCopyWithImpl(this._self, this._then);

  final ExerciseSessionItemParams _self;
  final $Res Function(ExerciseSessionItemParams) _then;

  /// Create a copy of AddSessionItemParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? params = null,
  }) {
    return _then(ExerciseSessionItemParams(
      params: null == params
          ? _self.params
          : params // ignore: cast_nullable_to_non_nullable
              as AddExerciseParams,
    ));
  }

  /// Create a copy of AddSessionItemParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddExerciseParamsCopyWith<$Res> get params {
    return $AddExerciseParamsCopyWith<$Res>(_self.params, (value) {
      return _then(_self.copyWith(params: value));
    });
  }
}

/// @nodoc

class RestSessionItemParams implements AddSessionItemParams {
  const RestSessionItemParams({required this.params});

  @override
  final AddRestParams params;

  /// Create a copy of AddSessionItemParams
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
    return 'AddSessionItemParams.rest(params: $params)';
  }
}

/// @nodoc
abstract mixin class $RestSessionItemParamsCopyWith<$Res>
    implements $AddSessionItemParamsCopyWith<$Res> {
  factory $RestSessionItemParamsCopyWith(RestSessionItemParams value,
          $Res Function(RestSessionItemParams) _then) =
      _$RestSessionItemParamsCopyWithImpl;
  @useResult
  $Res call({AddRestParams params});

  $AddRestParamsCopyWith<$Res> get params;
}

/// @nodoc
class _$RestSessionItemParamsCopyWithImpl<$Res>
    implements $RestSessionItemParamsCopyWith<$Res> {
  _$RestSessionItemParamsCopyWithImpl(this._self, this._then);

  final RestSessionItemParams _self;
  final $Res Function(RestSessionItemParams) _then;

  /// Create a copy of AddSessionItemParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? params = null,
  }) {
    return _then(RestSessionItemParams(
      params: null == params
          ? _self.params
          : params // ignore: cast_nullable_to_non_nullable
              as AddRestParams,
    ));
  }

  /// Create a copy of AddSessionItemParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddRestParamsCopyWith<$Res> get params {
    return $AddRestParamsCopyWith<$Res>(_self.params, (value) {
      return _then(_self.copyWith(params: value));
    });
  }
}

// dart format on
