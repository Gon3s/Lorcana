// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_image_urls.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CardImageUrlsEntity _$CardImageUrlsEntityFromJson(Map<String, dynamic> json) {
  return _CardImageUrlsEntity.fromJson(json);
}

/// @nodoc
mixin _$CardImageUrlsEntity {
  int get height => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardImageUrlsEntityCopyWith<CardImageUrlsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardImageUrlsEntityCopyWith<$Res> {
  factory $CardImageUrlsEntityCopyWith(
          CardImageUrlsEntity value, $Res Function(CardImageUrlsEntity) then) =
      _$CardImageUrlsEntityCopyWithImpl<$Res, CardImageUrlsEntity>;
  @useResult
  $Res call({int height, String url});
}

/// @nodoc
class _$CardImageUrlsEntityCopyWithImpl<$Res, $Val extends CardImageUrlsEntity>
    implements $CardImageUrlsEntityCopyWith<$Res> {
  _$CardImageUrlsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardImageUrlsEntityImplCopyWith<$Res>
    implements $CardImageUrlsEntityCopyWith<$Res> {
  factory _$$CardImageUrlsEntityImplCopyWith(_$CardImageUrlsEntityImpl value,
          $Res Function(_$CardImageUrlsEntityImpl) then) =
      __$$CardImageUrlsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int height, String url});
}

/// @nodoc
class __$$CardImageUrlsEntityImplCopyWithImpl<$Res>
    extends _$CardImageUrlsEntityCopyWithImpl<$Res, _$CardImageUrlsEntityImpl>
    implements _$$CardImageUrlsEntityImplCopyWith<$Res> {
  __$$CardImageUrlsEntityImplCopyWithImpl(_$CardImageUrlsEntityImpl _value,
      $Res Function(_$CardImageUrlsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? url = null,
  }) {
    return _then(_$CardImageUrlsEntityImpl(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardImageUrlsEntityImpl extends _CardImageUrlsEntity {
  _$CardImageUrlsEntityImpl({required this.height, required this.url})
      : super._();

  factory _$CardImageUrlsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardImageUrlsEntityImplFromJson(json);

  @override
  final int height;
  @override
  final String url;

  @override
  String toString() {
    return 'CardImageUrlsEntity(height: $height, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardImageUrlsEntityImpl &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, height, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardImageUrlsEntityImplCopyWith<_$CardImageUrlsEntityImpl> get copyWith =>
      __$$CardImageUrlsEntityImplCopyWithImpl<_$CardImageUrlsEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardImageUrlsEntityImplToJson(
      this,
    );
  }
}

abstract class _CardImageUrlsEntity extends CardImageUrlsEntity {
  factory _CardImageUrlsEntity(
      {required final int height,
      required final String url}) = _$CardImageUrlsEntityImpl;
  _CardImageUrlsEntity._() : super._();

  factory _CardImageUrlsEntity.fromJson(Map<String, dynamic> json) =
      _$CardImageUrlsEntityImpl.fromJson;

  @override
  int get height;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$CardImageUrlsEntityImplCopyWith<_$CardImageUrlsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
