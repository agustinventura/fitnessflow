// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rest_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RestTime implements DiagnosticableTreeMixin {
  int get durationInSeconds;

  /// Create a copy of RestTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RestTimeCopyWith<RestTime> get copyWith =>
      _$RestTimeCopyWithImpl<RestTime>(this as RestTime, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'RestTime'))
      ..add(DiagnosticsProperty('durationInSeconds', durationInSeconds));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RestTime &&
            (identical(other.durationInSeconds, durationInSeconds) ||
                other.durationInSeconds == durationInSeconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, durationInSeconds);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RestTime(durationInSeconds: $durationInSeconds)';
  }
}

/// @nodoc
abstract mixin class $RestTimeCopyWith<$Res> {
  factory $RestTimeCopyWith(RestTime value, $Res Function(RestTime) _then) =
      _$RestTimeCopyWithImpl;
  @useResult
  $Res call({int durationInSeconds});
}

/// @nodoc
class _$RestTimeCopyWithImpl<$Res> implements $RestTimeCopyWith<$Res> {
  _$RestTimeCopyWithImpl(this._self, this._then);

  final RestTime _self;
  final $Res Function(RestTime) _then;

  /// Create a copy of RestTime
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

class _RestTime extends RestTime with DiagnosticableTreeMixin {
  const _RestTime({required this.durationInSeconds})
      : assert(durationInSeconds >= 0, 'Rest time must be positive'),
        super._();

  @override
  final int durationInSeconds;

  /// Create a copy of RestTime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RestTimeCopyWith<_RestTime> get copyWith =>
      __$RestTimeCopyWithImpl<_RestTime>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'RestTime'))
      ..add(DiagnosticsProperty('durationInSeconds', durationInSeconds));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RestTime &&
            (identical(other.durationInSeconds, durationInSeconds) ||
                other.durationInSeconds == durationInSeconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, durationInSeconds);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RestTime(durationInSeconds: $durationInSeconds)';
  }
}

/// @nodoc
abstract mixin class _$RestTimeCopyWith<$Res>
    implements $RestTimeCopyWith<$Res> {
  factory _$RestTimeCopyWith(_RestTime value, $Res Function(_RestTime) _then) =
      __$RestTimeCopyWithImpl;
  @override
  @useResult
  $Res call({int durationInSeconds});
}

/// @nodoc
class __$RestTimeCopyWithImpl<$Res> implements _$RestTimeCopyWith<$Res> {
  __$RestTimeCopyWithImpl(this._self, this._then);

  final _RestTime _self;
  final $Res Function(_RestTime) _then;

  /// Create a copy of RestTime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? durationInSeconds = null,
  }) {
    return _then(_RestTime(
      durationInSeconds: null == durationInSeconds
          ? _self.durationInSeconds
          : durationInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
