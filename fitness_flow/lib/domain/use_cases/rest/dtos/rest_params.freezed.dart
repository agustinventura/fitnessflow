// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rest_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RestParams {
  int get durationInSeconds;

  /// Create a copy of RestParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RestParamsCopyWith<RestParams> get copyWith =>
      _$RestParamsCopyWithImpl<RestParams>(this as RestParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RestParams &&
            (identical(other.durationInSeconds, durationInSeconds) ||
                other.durationInSeconds == durationInSeconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, durationInSeconds);

  @override
  String toString() {
    return 'RestParams(durationInSeconds: $durationInSeconds)';
  }
}

/// @nodoc
abstract mixin class $RestParamsCopyWith<$Res> {
  factory $RestParamsCopyWith(
          RestParams value, $Res Function(RestParams) _then) =
      _$RestParamsCopyWithImpl;
  @useResult
  $Res call({int durationInSeconds});
}

/// @nodoc
class _$RestParamsCopyWithImpl<$Res> implements $RestParamsCopyWith<$Res> {
  _$RestParamsCopyWithImpl(this._self, this._then);

  final RestParams _self;
  final $Res Function(RestParams) _then;

  /// Create a copy of RestParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? durationInSeconds = null,
  }) {
    return _then(_self.copyWith(
      durationInSeconds: null == durationInSeconds
          ? _self.durationInSeconds
          : durationInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _AddRestParams implements RestParams {
  const _AddRestParams({required this.durationInSeconds});

  @override
  final int durationInSeconds;

  /// Create a copy of RestParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddRestParamsCopyWith<_AddRestParams> get copyWith =>
      __$AddRestParamsCopyWithImpl<_AddRestParams>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddRestParams &&
            (identical(other.durationInSeconds, durationInSeconds) ||
                other.durationInSeconds == durationInSeconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, durationInSeconds);

  @override
  String toString() {
    return 'RestParams(durationInSeconds: $durationInSeconds)';
  }
}

/// @nodoc
abstract mixin class _$AddRestParamsCopyWith<$Res>
    implements $RestParamsCopyWith<$Res> {
  factory _$AddRestParamsCopyWith(
          _AddRestParams value, $Res Function(_AddRestParams) _then) =
      __$AddRestParamsCopyWithImpl;
  @override
  @useResult
  $Res call({int durationInSeconds});
}

/// @nodoc
class __$AddRestParamsCopyWithImpl<$Res>
    implements _$AddRestParamsCopyWith<$Res> {
  __$AddRestParamsCopyWithImpl(this._self, this._then);

  final _AddRestParams _self;
  final $Res Function(_AddRestParams) _then;

  /// Create a copy of RestParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? durationInSeconds = null,
  }) {
    return _then(_AddRestParams(
      durationInSeconds: null == durationInSeconds
          ? _self.durationInSeconds
          : durationInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
