// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forum_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForumGroup _$ForumGroupFromJson(Map<String, dynamic> json) {
  return _ForumGroup.fromJson(json);
}

/// @nodoc
mixin _$ForumGroup {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Forum> get data => throw _privateConstructorUsedError;

  /// Serializes this ForumGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForumGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForumGroupCopyWith<ForumGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForumGroupCopyWith<$Res> {
  factory $ForumGroupCopyWith(
          ForumGroup value, $Res Function(ForumGroup) then) =
      _$ForumGroupCopyWithImpl<$Res, ForumGroup>;
  @useResult
  $Res call({String id, String name, List<Forum> data});
}

/// @nodoc
class _$ForumGroupCopyWithImpl<$Res, $Val extends ForumGroup>
    implements $ForumGroupCopyWith<$Res> {
  _$ForumGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForumGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Forum>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForumGroupImplCopyWith<$Res>
    implements $ForumGroupCopyWith<$Res> {
  factory _$$ForumGroupImplCopyWith(
          _$ForumGroupImpl value, $Res Function(_$ForumGroupImpl) then) =
      __$$ForumGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<Forum> data});
}

/// @nodoc
class __$$ForumGroupImplCopyWithImpl<$Res>
    extends _$ForumGroupCopyWithImpl<$Res, _$ForumGroupImpl>
    implements _$$ForumGroupImplCopyWith<$Res> {
  __$$ForumGroupImplCopyWithImpl(
      _$ForumGroupImpl _value, $Res Function(_$ForumGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForumGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? data = null,
  }) {
    return _then(_$ForumGroupImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Forum>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForumGroupImpl implements _ForumGroup {
  const _$ForumGroupImpl(
      {required this.id, required this.name, required final List<Forum> data})
      : _data = data;

  factory _$ForumGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForumGroupImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<Forum> _data;
  @override
  List<Forum> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ForumGroup(id: $id, name: $name, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForumGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_data));

  /// Create a copy of ForumGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForumGroupImplCopyWith<_$ForumGroupImpl> get copyWith =>
      __$$ForumGroupImplCopyWithImpl<_$ForumGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForumGroupImplToJson(
      this,
    );
  }
}

abstract class _ForumGroup implements ForumGroup {
  const factory _ForumGroup(
      {required final String id,
      required final String name,
      required final List<Forum> data}) = _$ForumGroupImpl;

  factory _ForumGroup.fromJson(Map<String, dynamic> json) =
      _$ForumGroupImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<Forum> get data;

  /// Create a copy of ForumGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForumGroupImplCopyWith<_$ForumGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
