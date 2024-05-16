// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CardEntity _$CardEntityFromJson(Map<String, dynamic> json) {
  return _CardEntity.fromJson(json);
}

/// @nodoc
mixin _$CardEntity {
  String get id => throw _privateConstructorUsedError;
  String get cardIdentifier => throw _privateConstructorUsedError;
  String get cardUrl => throw _privateConstructorUsedError;
  String get deckBuildingId => throw _privateConstructorUsedError;
  List<CardImageUrlsEntity>? get imageUrls =>
      throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  CardPricesEntity? get prices => throw _privateConstructorUsedError;
  String get rarity => throw _privateConstructorUsedError;
  String get search => throw _privateConstructorUsedError;
  int? get sortNumber => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardEntityCopyWith<CardEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardEntityCopyWith<$Res> {
  factory $CardEntityCopyWith(
          CardEntity value, $Res Function(CardEntity) then) =
      _$CardEntityCopyWithImpl<$Res, CardEntity>;
  @useResult
  $Res call(
      {String id,
      String cardIdentifier,
      String cardUrl,
      String deckBuildingId,
      List<CardImageUrlsEntity>? imageUrls,
      String name,
      CardPricesEntity? prices,
      String rarity,
      String search,
      int? sortNumber,
      String subtitle,
      DateTime? updatedAt});

  $CardPricesEntityCopyWith<$Res>? get prices;
}

/// @nodoc
class _$CardEntityCopyWithImpl<$Res, $Val extends CardEntity>
    implements $CardEntityCopyWith<$Res> {
  _$CardEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cardIdentifier = null,
    Object? cardUrl = null,
    Object? deckBuildingId = null,
    Object? imageUrls = freezed,
    Object? name = null,
    Object? prices = freezed,
    Object? rarity = null,
    Object? search = null,
    Object? sortNumber = freezed,
    Object? subtitle = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cardIdentifier: null == cardIdentifier
          ? _value.cardIdentifier
          : cardIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      cardUrl: null == cardUrl
          ? _value.cardUrl
          : cardUrl // ignore: cast_nullable_to_non_nullable
              as String,
      deckBuildingId: null == deckBuildingId
          ? _value.deckBuildingId
          : deckBuildingId // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrls: freezed == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<CardImageUrlsEntity>?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      prices: freezed == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as CardPricesEntity?,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as String,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
      sortNumber: freezed == sortNumber
          ? _value.sortNumber
          : sortNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardPricesEntityCopyWith<$Res>? get prices {
    if (_value.prices == null) {
      return null;
    }

    return $CardPricesEntityCopyWith<$Res>(_value.prices!, (value) {
      return _then(_value.copyWith(prices: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardEntityImplCopyWith<$Res>
    implements $CardEntityCopyWith<$Res> {
  factory _$$CardEntityImplCopyWith(
          _$CardEntityImpl value, $Res Function(_$CardEntityImpl) then) =
      __$$CardEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String cardIdentifier,
      String cardUrl,
      String deckBuildingId,
      List<CardImageUrlsEntity>? imageUrls,
      String name,
      CardPricesEntity? prices,
      String rarity,
      String search,
      int? sortNumber,
      String subtitle,
      DateTime? updatedAt});

  @override
  $CardPricesEntityCopyWith<$Res>? get prices;
}

/// @nodoc
class __$$CardEntityImplCopyWithImpl<$Res>
    extends _$CardEntityCopyWithImpl<$Res, _$CardEntityImpl>
    implements _$$CardEntityImplCopyWith<$Res> {
  __$$CardEntityImplCopyWithImpl(
      _$CardEntityImpl _value, $Res Function(_$CardEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cardIdentifier = null,
    Object? cardUrl = null,
    Object? deckBuildingId = null,
    Object? imageUrls = freezed,
    Object? name = null,
    Object? prices = freezed,
    Object? rarity = null,
    Object? search = null,
    Object? sortNumber = freezed,
    Object? subtitle = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$CardEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cardIdentifier: null == cardIdentifier
          ? _value.cardIdentifier
          : cardIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      cardUrl: null == cardUrl
          ? _value.cardUrl
          : cardUrl // ignore: cast_nullable_to_non_nullable
              as String,
      deckBuildingId: null == deckBuildingId
          ? _value.deckBuildingId
          : deckBuildingId // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrls: freezed == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<CardImageUrlsEntity>?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      prices: freezed == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as CardPricesEntity?,
      rarity: null == rarity
          ? _value.rarity
          : rarity // ignore: cast_nullable_to_non_nullable
              as String,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
      sortNumber: freezed == sortNumber
          ? _value.sortNumber
          : sortNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardEntityImpl extends _CardEntity {
  _$CardEntityImpl(
      {required this.id,
      required this.cardIdentifier,
      required this.cardUrl,
      required this.deckBuildingId,
      required final List<CardImageUrlsEntity>? imageUrls,
      required this.name,
      required this.prices,
      required this.rarity,
      required this.search,
      required this.sortNumber,
      required this.subtitle,
      required this.updatedAt})
      : _imageUrls = imageUrls,
        super._();

  factory _$CardEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String cardIdentifier;
  @override
  final String cardUrl;
  @override
  final String deckBuildingId;
  final List<CardImageUrlsEntity>? _imageUrls;
  @override
  List<CardImageUrlsEntity>? get imageUrls {
    final value = _imageUrls;
    if (value == null) return null;
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String name;
  @override
  final CardPricesEntity? prices;
  @override
  final String rarity;
  @override
  final String search;
  @override
  final int? sortNumber;
  @override
  final String subtitle;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'CardEntity(id: $id, cardIdentifier: $cardIdentifier, cardUrl: $cardUrl, deckBuildingId: $deckBuildingId, imageUrls: $imageUrls, name: $name, prices: $prices, rarity: $rarity, search: $search, sortNumber: $sortNumber, subtitle: $subtitle, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cardIdentifier, cardIdentifier) ||
                other.cardIdentifier == cardIdentifier) &&
            (identical(other.cardUrl, cardUrl) || other.cardUrl == cardUrl) &&
            (identical(other.deckBuildingId, deckBuildingId) ||
                other.deckBuildingId == deckBuildingId) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.prices, prices) || other.prices == prices) &&
            (identical(other.rarity, rarity) || other.rarity == rarity) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.sortNumber, sortNumber) ||
                other.sortNumber == sortNumber) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      cardIdentifier,
      cardUrl,
      deckBuildingId,
      const DeepCollectionEquality().hash(_imageUrls),
      name,
      prices,
      rarity,
      search,
      sortNumber,
      subtitle,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardEntityImplCopyWith<_$CardEntityImpl> get copyWith =>
      __$$CardEntityImplCopyWithImpl<_$CardEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardEntityImplToJson(
      this,
    );
  }
}

abstract class _CardEntity extends CardEntity {
  factory _CardEntity(
      {required final String id,
      required final String cardIdentifier,
      required final String cardUrl,
      required final String deckBuildingId,
      required final List<CardImageUrlsEntity>? imageUrls,
      required final String name,
      required final CardPricesEntity? prices,
      required final String rarity,
      required final String search,
      required final int? sortNumber,
      required final String subtitle,
      required final DateTime? updatedAt}) = _$CardEntityImpl;
  _CardEntity._() : super._();

  factory _CardEntity.fromJson(Map<String, dynamic> json) =
      _$CardEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get cardIdentifier;
  @override
  String get cardUrl;
  @override
  String get deckBuildingId;
  @override
  List<CardImageUrlsEntity>? get imageUrls;
  @override
  String get name;
  @override
  CardPricesEntity? get prices;
  @override
  String get rarity;
  @override
  String get search;
  @override
  int? get sortNumber;
  @override
  String get subtitle;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$CardEntityImplCopyWith<_$CardEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
