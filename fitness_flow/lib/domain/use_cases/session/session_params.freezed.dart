// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SessionParams {
  String get name;
  List<SessionItemParams> get items;

  /// Create a copy of SessionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SessionParamsCopyWith<SessionParams> get copyWith =>
      _$SessionParamsCopyWithImpl<SessionParams>(
          this as SessionParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SessionParams &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(items));

  @override
  String toString() {
    return 'SessionParams(name: $name, items: $items)';
  }
}

/// @nodoc
abstract mixin class $SessionParamsCopyWith<$Res> {
  factory $SessionParamsCopyWith(
          SessionParams value, $Res Function(SessionParams) _then) =
      _$SessionParamsCopyWithImpl;
  @useResult
  $Res call({String name, List<SessionItemParams> items});
}

/// @nodoc
class _$SessionParamsCopyWithImpl<$Res>
    implements $SessionParamsCopyWith<$Res> {
  _$SessionParamsCopyWithImpl(this._self, this._then);

  final SessionParams _self;
  final $Res Function(SessionParams) _then;

  /// Create a copy of SessionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? items = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SessionItemParams>,
    ));
  }
}

/// @nodoc

class _AddSessionParams implements SessionParams {
  const _AddSessionParams(
      {required this.name, required final List<SessionItemParams> items})
      : _items = items;

  @override
  final String name;
  final List<SessionItemParams> _items;
  @override
  List<SessionItemParams> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// Create a copy of SessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddSessionParamsCopyWith<_AddSessionParams> get copyWith =>
      __$AddSessionParamsCopyWithImpl<_AddSessionParams>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddSessionParams &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_items));

  @override
  String toString() {
    return 'SessionParams(name: $name, items: $items)';
  }
}

/// @nodoc
abstract mixin class _$AddSessionParamsCopyWith<$Res>
    implements $SessionParamsCopyWith<$Res> {
  factory _$AddSessionParamsCopyWith(
          _AddSessionParams value, $Res Function(_AddSessionParams) _then) =
      __$AddSessionParamsCopyWithImpl;
  @override
  @useResult
  $Res call({String name, List<SessionItemParams> items});
}

/// @nodoc
class __$AddSessionParamsCopyWithImpl<$Res>
    implements _$AddSessionParamsCopyWith<$Res> {
  __$AddSessionParamsCopyWithImpl(this._self, this._then);

  final _AddSessionParams _self;
  final $Res Function(_AddSessionParams) _then;

  /// Create a copy of SessionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? items = null,
  }) {
    return _then(_AddSessionParams(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SessionItemParams>,
    ));
  }
}

// dart format on
