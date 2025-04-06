// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Routine {
  RoutineId get id;

  String get name;

  List<Session> get sessions;

  /// Create a copy of Routine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RoutineCopyWith<Routine> get copyWith =>
      _$RoutineCopyWithImpl<Routine>(this as Routine, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Routine &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.sessions, sessions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(sessions));

  @override
  String toString() {
    return 'Routine(id: $id, name: $name, sessions: $sessions)';
  }
}

/// @nodoc
abstract mixin class $RoutineCopyWith<$Res> {
  factory $RoutineCopyWith(Routine value, $Res Function(Routine) _then) =
      _$RoutineCopyWithImpl;

  @useResult
  $Res call({RoutineId id, String name, List<Session> sessions});

  $RoutineIdCopyWith<$Res> get id;
}

/// @nodoc
class _$RoutineCopyWithImpl<$Res> implements $RoutineCopyWith<$Res> {
  _$RoutineCopyWithImpl(this._self, this._then);

  final Routine _self;
  final $Res Function(Routine) _then;

  /// Create a copy of Routine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sessions = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as RoutineId,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sessions: null == sessions
          ? _self.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<Session>,
    ));
  }

  /// Create a copy of Routine
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoutineIdCopyWith<$Res> get id {
    return $RoutineIdCopyWith<$Res>(_self.id, (value) {
      return _then(_self.copyWith(id: value));
    });
  }
}

/// @nodoc

class _Routine extends Routine {
  _Routine(
      {required this.id,
      required this.name,
      required final List<Session> sessions})
      : _sessions = sessions,
        super._();

  @override
  final RoutineId id;
  @override
  final String name;
  final List<Session> _sessions;

  @override
  List<Session> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  /// Create a copy of Routine
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RoutineCopyWith<_Routine> get copyWith =>
      __$RoutineCopyWithImpl<_Routine>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Routine &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_sessions));

  @override
  String toString() {
    return 'Routine(id: $id, name: $name, sessions: $sessions)';
  }
}

/// @nodoc
abstract mixin class _$RoutineCopyWith<$Res> implements $RoutineCopyWith<$Res> {
  factory _$RoutineCopyWith(_Routine value, $Res Function(_Routine) _then) =
      __$RoutineCopyWithImpl;

  @override
  @useResult
  $Res call({RoutineId id, String name, List<Session> sessions});

  @override
  $RoutineIdCopyWith<$Res> get id;
}

/// @nodoc
class __$RoutineCopyWithImpl<$Res> implements _$RoutineCopyWith<$Res> {
  __$RoutineCopyWithImpl(this._self, this._then);

  final _Routine _self;
  final $Res Function(_Routine) _then;

  /// Create a copy of Routine
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sessions = null,
  }) {
    return _then(_Routine(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as RoutineId,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sessions: null == sessions
          ? _self._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<Session>,
    ));
  }

  /// Create a copy of Routine
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoutineIdCopyWith<$Res> get id {
    return $RoutineIdCopyWith<$Res>(_self.id, (value) {
      return _then(_self.copyWith(id: value));
    });
  }
}

// dart format on
