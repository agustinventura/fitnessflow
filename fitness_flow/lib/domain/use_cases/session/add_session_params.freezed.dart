// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_session_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddSessionParams {
  String get name;
  List<AddSessionItemParams> get items;

  /// Create a copy of AddSessionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddSessionParamsCopyWith<AddSessionParams> get copyWith =>
      _$AddSessionParamsCopyWithImpl<AddSessionParams>(
          this as AddSessionParams, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddSessionParams &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(items));

  @override
  String toString() {
    return 'AddSessionParams(name: $name, items: $items)';
  }
}

/// @nodoc
abstract mixin class $AddSessionParamsCopyWith<$Res> {
  factory $AddSessionParamsCopyWith(
          AddSessionParams value, $Res Function(AddSessionParams) _then) =
      _$AddSessionParamsCopyWithImpl;
  @useResult
  $Res call({String name, List<AddSessionItemParams> items});
}

/// @nodoc
class _$AddSessionParamsCopyWithImpl<$Res>
    implements $AddSessionParamsCopyWith<$Res> {
  _$AddSessionParamsCopyWithImpl(this._self, this._then);

  final AddSessionParams _self;
  final $Res Function(AddSessionParams) _then;

  /// Create a copy of AddSessionParams
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
              as List<AddSessionItemParams>,
    ));
  }
}

/// @nodoc

class _AddSessionParams implements AddSessionParams {
  const _AddSessionParams(
      {required this.name, required final List<AddSessionItemParams> items})
      : _items = items;

  @override
  final String name;
  final List<AddSessionItemParams> _items;
  @override
  List<AddSessionItemParams> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// Create a copy of AddSessionParams
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
    return 'AddSessionParams(name: $name, items: $items)';
  }
}

/// @nodoc
abstract mixin class _$AddSessionParamsCopyWith<$Res>
    implements $AddSessionParamsCopyWith<$Res> {
  factory _$AddSessionParamsCopyWith(
          _AddSessionParams value, $Res Function(_AddSessionParams) _then) =
      __$AddSessionParamsCopyWithImpl;
  @override
  @useResult
  $Res call({String name, List<AddSessionItemParams> items});
}

/// @nodoc
class __$AddSessionParamsCopyWithImpl<$Res>
    implements _$AddSessionParamsCopyWith<$Res> {
  __$AddSessionParamsCopyWithImpl(this._self, this._then);

  final _AddSessionParams _self;
  final $Res Function(_AddSessionParams) _then;

  /// Create a copy of AddSessionParams
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
              as List<AddSessionItemParams>,
    ));
  }
}

// dart format on
