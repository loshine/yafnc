// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Forum _$ForumFromJson(Map<String, dynamic> json) {
  return _Forum.fromJson(json);
}

/// @nodoc
mixin _$Forum {
  int get fid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get info => throw _privateConstructorUsedError;
  String? get infoL => throw _privateConstructorUsedError;
  int? get stid => throw _privateConstructorUsedError;
  int? get bit => throw _privateConstructorUsedError;

  /// Serializes this Forum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Forum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForumCopyWith<Forum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForumCopyWith<$Res> {
  factory $ForumCopyWith(Forum value, $Res Function(Forum) then) =
      _$ForumCopyWithImpl<$Res, Forum>;
  @useResult
  $Res call(
      {int fid, String name, String? info, String? infoL, int? stid, int? bit});
}

/// @nodoc
class _$ForumCopyWithImpl<$Res, $Val extends Forum>
    implements $ForumCopyWith<$Res> {
  _$ForumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Forum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fid = null,
    Object? name = null,
    Object? info = freezed,
    Object? infoL = freezed,
    Object? stid = freezed,
    Object? bit = freezed,
  }) {
    return _then(_value.copyWith(
      fid: null == fid
          ? _value.fid
          : fid // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
      infoL: freezed == infoL
          ? _value.infoL
          : infoL // ignore: cast_nullable_to_non_nullable
              as String?,
      stid: freezed == stid
          ? _value.stid
          : stid // ignore: cast_nullable_to_non_nullable
              as int?,
      bit: freezed == bit
          ? _value.bit
          : bit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForumImplCopyWith<$Res> implements $ForumCopyWith<$Res> {
  factory _$$ForumImplCopyWith(
          _$ForumImpl value, $Res Function(_$ForumImpl) then) =
      __$$ForumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int fid, String name, String? info, String? infoL, int? stid, int? bit});
}

/// @nodoc
class __$$ForumImplCopyWithImpl<$Res>
    extends _$ForumCopyWithImpl<$Res, _$ForumImpl>
    implements _$$ForumImplCopyWith<$Res> {
  __$$ForumImplCopyWithImpl(
      _$ForumImpl _value, $Res Function(_$ForumImpl) _then)
      : super(_value, _then);

  /// Create a copy of Forum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fid = null,
    Object? name = null,
    Object? info = freezed,
    Object? infoL = freezed,
    Object? stid = freezed,
    Object? bit = freezed,
  }) {
    return _then(_$ForumImpl(
      fid: null == fid
          ? _value.fid
          : fid // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
      infoL: freezed == infoL
          ? _value.infoL
          : infoL // ignore: cast_nullable_to_non_nullable
              as String?,
      stid: freezed == stid
          ? _value.stid
          : stid // ignore: cast_nullable_to_non_nullable
              as int?,
      bit: freezed == bit
          ? _value.bit
          : bit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForumImpl implements _Forum {
  const _$ForumImpl(
      {required this.fid,
      required this.name,
      this.info,
      this.infoL,
      this.stid,
      this.bit});

  factory _$ForumImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForumImplFromJson(json);

  @override
  final int fid;
  @override
  final String name;
  @override
  final String? info;
  @override
  final String? infoL;
  @override
  final int? stid;
  @override
  final int? bit;

  @override
  String toString() {
    return 'Forum(fid: $fid, name: $name, info: $info, infoL: $infoL, stid: $stid, bit: $bit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForumImpl &&
            (identical(other.fid, fid) || other.fid == fid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.infoL, infoL) || other.infoL == infoL) &&
            (identical(other.stid, stid) || other.stid == stid) &&
            (identical(other.bit, bit) || other.bit == bit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fid, name, info, infoL, stid, bit);

  /// Create a copy of Forum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForumImplCopyWith<_$ForumImpl> get copyWith =>
      __$$ForumImplCopyWithImpl<_$ForumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForumImplToJson(
      this,
    );
  }
}

abstract class _Forum implements Forum {
  const factory _Forum(
      {required final int fid,
      required final String name,
      final String? info,
      final String? infoL,
      final int? stid,
      final int? bit}) = _$ForumImpl;

  factory _Forum.fromJson(Map<String, dynamic> json) = _$ForumImpl.fromJson;

  @override
  int get fid;
  @override
  String get name;
  @override
  String? get info;
  @override
  String? get infoL;
  @override
  int? get stid;
  @override
  int? get bit;

  /// Create a copy of Forum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForumImplCopyWith<_$ForumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
