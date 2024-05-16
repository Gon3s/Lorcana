// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardEntityImpl _$$CardEntityImplFromJson(Map<String, dynamic> json) =>
    _$CardEntityImpl(
      id: json['id'] as String,
      cardIdentifier: json['cardIdentifier'] as String,
      cardUrl: json['cardUrl'] as String,
      deckBuildingId: json['deckBuildingId'] as String,
      imageUrls: (json['imageUrls'] as List<dynamic>?)
          ?.map((e) => CardImageUrlsEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      prices: json['prices'] == null
          ? null
          : CardPricesEntity.fromJson(json['prices'] as Map<String, dynamic>),
      rarity: json['rarity'] as String,
      search: json['search'] as String,
      sortNumber: json['sortNumber'] as int?,
      subtitle: json['subtitle'] as String,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$CardEntityImplToJson(_$CardEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cardIdentifier': instance.cardIdentifier,
      'cardUrl': instance.cardUrl,
      'deckBuildingId': instance.deckBuildingId,
      'imageUrls': instance.imageUrls,
      'name': instance.name,
      'prices': instance.prices,
      'rarity': instance.rarity,
      'search': instance.search,
      'sortNumber': instance.sortNumber,
      'subtitle': instance.subtitle,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
