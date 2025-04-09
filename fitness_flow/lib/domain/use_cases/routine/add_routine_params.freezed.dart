// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_routine_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddRoutineParams {
  String get name;
  List<AddSessionParams>? get initialSessions;

  /// Create a copy of AddRoutineParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddRoutineParamsCopyWith<AddRoutineParams> get copyWith =>
      _$AddRoutineParamsCopyWithImpl<AddRoutineParams>(
          this as AddRoutineParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddRoutineParams &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.initialSessions, initialSessions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(initialSessions));

  @override
  String toString() {
    return 'AddRoutineParams(name: $name, initialSessions: $initialSessions)';
  }
}

/// @nodoc
abstract mixin class $AddRoutineParamsCopyWith<$Res> {
  factory $AddRoutineParamsCopyWith(
          AddRoutineParams value, $Res Function(AddRoutineParams) _then) =
      _$AddRoutineParamsCopyWithImpl;
  @useResult
  $Res call({String name, List<AddSessionParams>? initialSessions});
}

/// @nodoc
class _$AddRoutineParamsCopyWithImpl<$Res>
    implements $AddRoutineParamsCopyWith<$Res> {
  _$AddRoutineParamsCopyWithImpl(this._self, this._then);

  final AddRoutineParams _self;
  final $Res Function(AddRoutineParams) _then;

  /// Create a copy of AddRoutineParams
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
              as List<AddSessionParams>?,
    ));
  }
}

/// @nodoc

class _AddRoutineParams implements AddRoutineParams {
  const _AddRoutineParams(
      {required this.name, final List<AddSessionParams>? initialSessions})
      : _initialSessions = initialSessions;

  @override
  final String name;
  final List<AddSessionParams>? _initialSessions;
  @override
  List<AddSessionParams>? get initialSessions {
    final value = _initialSessions;
    if (value == null) return null;
    if (_initialSessions is EqualUnmodifiableListView) return _initialSessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of AddRoutineParams
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
    return 'AddRoutineParams(name: $name, initialSessions: $initialSessions)';
  }
}

/// @nodoc
abstract mixin class _$AddRoutineParamsCopyWith<$Res>
    implements $AddRoutineParamsCopyWith<$Res> {
  factory _$AddRoutineParamsCopyWith(
          _AddRoutineParams value, $Res Function(_AddRoutineParams) _then) =
      __$AddRoutineParamsCopyWithImpl;
  @override
  @useResult
  $Res call({String name, List<AddSessionParams>? initialSessions});
}

/// @nodoc
class __$AddRoutineParamsCopyWithImpl<$Res>
    implements _$AddRoutineParamsCopyWith<$Res> {
  __$AddRoutineParamsCopyWithImpl(this._self, this._then);

  final _AddRoutineParams _self;
  final $Res Function(_AddRoutineParams) _then;

  /// Create a copy of AddRoutineParams
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
              as List<AddSessionParams>?,
    ));
  }
}

// dart format on
