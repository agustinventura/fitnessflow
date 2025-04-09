// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_rest_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddRestParams {
  int get durationInSeconds;

  /// Create a copy of AddRestParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddRestParamsCopyWith<AddRestParams> get copyWith =>
      _$AddRestParamsCopyWithImpl<AddRestParams>(
          this as AddRestParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddRestParams &&
            (identical(other.durationInSeconds, durationInSeconds) ||
                other.durationInSeconds == durationInSeconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, durationInSeconds);

  @override
  String toString() {
    return 'AddRestParams(durationInSeconds: $durationInSeconds)';
  }
}

/// @nodoc
abstract mixin class $AddRestParamsCopyWith<$Res> {
  factory $AddRestParamsCopyWith(
          AddRestParams value, $Res Function(AddRestParams) _then) =
      _$AddRestParamsCopyWithImpl;
  @useResult
  $Res call({int durationInSeconds});
}

/// @nodoc
class _$AddRestParamsCopyWithImpl<$Res>
    implements $AddRestParamsCopyWith<$Res> {
  _$AddRestParamsCopyWithImpl(this._self, this._then);

  final AddRestParams _self;
  final $Res Function(AddRestParams) _then;

  /// Create a copy of AddRestParams
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

class _AddRestParams implements AddRestParams {
  const _AddRestParams({required this.durationInSeconds});

  @override
  final int durationInSeconds;

  /// Create a copy of AddRestParams
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
    return 'AddRestParams(durationInSeconds: $durationInSeconds)';
  }
}

/// @nodoc
abstract mixin class _$AddRestParamsCopyWith<$Res>
    implements $AddRestParamsCopyWith<$Res> {
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

  /// Create a copy of AddRestParams
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
