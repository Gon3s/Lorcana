// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_favorites.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardFavoritesEntityImpl _$$CardFavoritesEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CardFavoritesEntityImpl(
      id: json['id'] as String,
      card: CardEntity.fromJson(json['card'] as Map<String, dynamic>),
      ownerId: json['ownerId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$CardFavoritesEntityImplToJson(
        _$CardFavoritesEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'card': instance.card,
      'ownerId': instance.ownerId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
