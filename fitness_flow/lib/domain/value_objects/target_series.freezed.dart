// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'target_series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TargetSeries implements DiagnosticableTreeMixin {
  int get count;

  /// Create a copy of TargetSeries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TargetSeriesCopyWith<TargetSeries> get copyWith =>
      _$TargetSeriesCopyWithImpl<TargetSeries>(
          this as TargetSeries, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'TargetSeries'))
      ..add(DiagnosticsProperty('count', count));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TargetSeries &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TargetSeries(count: $count)';
  }
}

/// @nodoc
abstract mixin class $TargetSeriesCopyWith<$Res> {
  factory $TargetSeriesCopyWith(
          TargetSeries value, $Res Function(TargetSeries) _then) =
      _$TargetSeriesCopyWithImpl;

  @useResult
  $Res call({int count});
}

/// @nodoc
class _$TargetSeriesCopyWithImpl<$Res> implements $TargetSeriesCopyWith<$Res> {
  _$TargetSeriesCopyWithImpl(this._self, this._then);

  final TargetSeries _self;
  final $Res Function(TargetSeries) _then;

  /// Create a copy of TargetSeries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_self.copyWith(
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _TargetSeries extends TargetSeries with DiagnosticableTreeMixin {
  const _TargetSeries({required this.count})
      : assert(count > 0, 'El número de series objetivo debe ser positivo.'),
        super._();

  @override
  final int count;

  /// Create a copy of TargetSeries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TargetSeriesCopyWith<_TargetSeries> get copyWith =>
      __$TargetSeriesCopyWithImpl<_TargetSeries>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'TargetSeries'))
      ..add(DiagnosticsProperty('count', count));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TargetSeries &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TargetSeries(count: $count)';
  }
}

/// @nodoc
abstract mixin class _$TargetSeriesCopyWith<$Res>
    implements $TargetSeriesCopyWith<$Res> {
  factory _$TargetSeriesCopyWith(
          _TargetSeries value, $Res Function(_TargetSeries) _then) =
      __$TargetSeriesCopyWithImpl;

  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$TargetSeriesCopyWithImpl<$Res>
    implements _$TargetSeriesCopyWith<$Res> {
  __$TargetSeriesCopyWithImpl(this._self, this._then);

  final _TargetSeries _self;
  final $Res Function(_TargetSeries) _then;

  /// Create a copy of TargetSeries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? count = null,
  }) {
    return _then(_TargetSeries(
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
