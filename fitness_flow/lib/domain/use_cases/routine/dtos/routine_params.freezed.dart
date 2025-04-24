// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routine_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RoutineParams {
  String get name;
  List<SessionParams>? get initialSessions;

  /// Create a copy of RoutineParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RoutineParamsCopyWith<RoutineParams> get copyWith =>
      _$RoutineParamsCopyWithImpl<RoutineParams>(
          this as RoutineParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RoutineParams &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.initialSessions, initialSessions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(initialSessions));

  @override
  String toString() {
    return 'RoutineParams(name: $name, initialSessions: $initialSessions)';
  }
}

/// @nodoc
abstract mixin class $RoutineParamsCopyWith<$Res> {
  factory $RoutineParamsCopyWith(
          RoutineParams value, $Res Function(RoutineParams) _then) =
      _$RoutineParamsCopyWithImpl;
  @useResult
  $Res call({String name, List<SessionParams>? initialSessions});
}

/// @nodoc
class _$RoutineParamsCopyWithImpl<$Res>
    implements $RoutineParamsCopyWith<$Res> {
  _$RoutineParamsCopyWithImpl(this._self, this._then);

  final RoutineParams _self;
  final $Res Function(RoutineParams) _then;

  /// Create a copy of RoutineParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? initialSessions = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      initialSessions: freezed == initialSessions
          ? _self.initialSessions
          : initialSessions // ignore: cast_nullable_to_non_nullable
              as List<SessionParams>?,
    ));
  }
}

/// @nodoc

class _AddRoutineParams implements RoutineParams {
  const _AddRoutineParams(
      {required this.name, final List<SessionParams>? initialSessions})
      : _initialSessions = initialSessions;

  @override
  final String name;
  final List<SessionParams>? _initialSessions;
  @override
  List<SessionParams>? get initialSessions {
    final value = _initialSessions;
    if (value == null) return null;
    if (_initialSessions is EqualUnmodifiableListView) return _initialSessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of RoutineParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddRoutineParamsCopyWith<_AddRoutineParams> get copyWith =>
      __$AddRoutineParamsCopyWithImpl<_AddRoutineParams>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddRoutineParams &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._initialSessions, _initialSessions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_initialSessions));

  @override
  String toString() {
    return 'RoutineParams(name: $name, initialSessions: $initialSessions)';
  }
}

/// @nodoc
abstract mixin class _$AddRoutineParamsCopyWith<$Res>
    implements $RoutineParamsCopyWith<$Res> {
  factory _$AddRoutineParamsCopyWith(
          _AddRoutineParams value, $Res Function(_AddRoutineParams) _then) =
      __$AddRoutineParamsCopyWithImpl;
  @override
  @useResult
  $Res call({String name, List<SessionParams>? initialSessions});
}

/// @nodoc
class __$AddRoutineParamsCopyWithImpl<$Res>
    implements _$AddRoutineParamsCopyWith<$Res> {
  __$AddRoutineParamsCopyWithImpl(this._self, this._then);

  final _AddRoutineParams _self;
  final $Res Function(_AddRoutineParams) _then;

  /// Create a copy of RoutineParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? initialSessions = freezed,
  }) {
    return _then(_AddRoutineParams(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      initialSessions: freezed == initialSessions
          ? _self._initialSessions
          : initialSessions // ignore: cast_nullable_to_non_nullable
              as List<SessionParams>?,
    ));
  }
}

// dart format on
