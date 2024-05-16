// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_favorites.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CardFavoritesEntity _$CardFavoritesEntityFromJson(Map<String, dynamic> json) {
  return _CardFavoritesEntity.fromJson(json);
}

/// @nodoc
mixin _$CardFavoritesEntity {
  String get id => throw _privateConstructorUsedError;
  CardEntity get card => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardFavoritesEntityCopyWith<CardFavoritesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardFavoritesEntityCopyWith<$Res> {
  factory $CardFavoritesEntityCopyWith(
          CardFavoritesEntity value, $Res Function(CardFavoritesEntity) then) =
      _$CardFavoritesEntityCopyWithImpl<$Res, CardFavoritesEntity>;
  @useResult
  $Res call(
      {String id,
      CardEntity card,
      String ownerId,
      DateTime createdAt,
      DateTime? updatedAt});

  $CardEntityCopyWith<$Res> get card;
}

/// @nodoc
class _$CardFavoritesEntityCopyWithImpl<$Res, $Val extends CardFavoritesEntity>
    implements $CardFavoritesEntityCopyWith<$Res> {
  _$CardFavoritesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? card = null,
    Object? ownerId = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      card: null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as CardEntity,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardEntityCopyWith<$Res> get card {
    return $CardEntityCopyWith<$Res>(_value.card, (value) {
      return _then(_value.copyWith(card: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardFavoritesEntityImplCopyWith<$Res>
    implements $CardFavoritesEntityCopyWith<$Res> {
  factory _$$CardFavoritesEntityImplCopyWith(_$CardFavoritesEntityImpl value,
          $Res Function(_$CardFavoritesEntityImpl) then) =
      __$$CardFavoritesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      CardEntity card,
      String ownerId,
      DateTime createdAt,
      DateTime? updatedAt});

  @override
  $CardEntityCopyWith<$Res> get card;
}

/// @nodoc
class __$$CardFavoritesEntityImplCopyWithImpl<$Res>
    extends _$CardFavoritesEntityCopyWithImpl<$Res, _$CardFavoritesEntityImpl>
    implements _$$CardFavoritesEntityImplCopyWith<$Res> {
  __$$CardFavoritesEntityImplCopyWithImpl(_$CardFavoritesEntityImpl _value,
      $Res Function(_$CardFavoritesEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? card = null,
    Object? ownerId = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$CardFavoritesEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      card: null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as CardEntity,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardFavoritesEntityImpl extends _CardFavoritesEntity {
  _$CardFavoritesEntityImpl(
      {required this.id,
      required this.card,
      required this.ownerId,
      required this.createdAt,
      required this.updatedAt})
      : super._();

  factory _$CardFavoritesEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardFavoritesEntityImplFromJson(json);

  @override
  final String id;
  @override
  final CardEntity card;
  @override
  final String ownerId;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'CardFavoritesEntity(id: $id, card: $card, ownerId: $ownerId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardFavoritesEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, card, ownerId, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardFavoritesEntityImplCopyWith<_$CardFavoritesEntityImpl> get copyWith =>
      __$$CardFavoritesEntityImplCopyWithImpl<_$CardFavoritesEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardFavoritesEntityImplToJson(
      this,
    );
  }
}

abstract class _CardFavoritesEntity extends CardFavoritesEntity {
  factory _CardFavoritesEntity(
      {required final String id,
      required final CardEntity card,
      required final String ownerId,
      required final DateTime createdAt,
      required final DateTime? updatedAt}) = _$CardFavoritesEntityImpl;
  _CardFavoritesEntity._() : super._();

  factory _CardFavoritesEntity.fromJson(Map<String, dynamic> json) =
      _$CardFavoritesEntityImpl.fromJson;

  @override
  String get id;
  @override
  CardEntity get card;
  @override
  String get ownerId;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$CardFavoritesEntityImplCopyWith<_$CardFavoritesEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
