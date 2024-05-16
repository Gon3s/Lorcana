import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lorcana_collection/features/cards/data/schemas/card.dart';
import 'package:lorcana_collection/features/cards/domain/entities/card_image_urls.dart';
import 'package:lorcana_collection/features/cards/domain/entities/card_prices.dart';
import 'package:realm/realm.dart';

part 'card.freezed.dart';
part 'card.g.dart';

@freezed
class CardEntity with _$CardEntity {
  factory CardEntity({
    required String id,
    required String cardIdentifier,
    required String cardUrl,
    required String deckBuildingId,
    required List<CardImageUrlsEntity>? imageUrls,
    required String name,
    required CardPricesEntity? prices,
    required String rarity,
    required String search,
    required int? sortNumber,
    required String subtitle,
    required DateTime? updatedAt,
  }) = _CardEntity;
  const CardEntity._();

  factory CardEntity.fromJson(Map<String, dynamic> json) => _$CardEntityFromJson(json);

  factory CardEntity.fromSchema(Card card) {
    return CardEntity(
      id: card.id.toString(),
      cardIdentifier: card.cardIdentifier.toString(),
      cardUrl: card.cardUrl,
      deckBuildingId: card.deckBuildingId.toString(),
      imageUrls: card.imageUrls.map(CardImageUrlsEntity.fromSchema).toList(),
      name: card.name.toString(),
      prices: card.prices == null ? null : CardPricesEntity.fromSchema(card.prices!),
      rarity: card.rarity.toString(),
      search: card.search.toString(),
      sortNumber: card.sortNumber,
      subtitle: card.subtitle.toString(),
      updatedAt: card.updatedAt,
    );
  }

  Card toSchema() {
    return Card(
      ObjectId.fromHexString(id),
      cardUrl,
      cardIdentifier: cardIdentifier,
      deckBuildingId: deckBuildingId,
      imageUrls: imageUrls!.map((e) => e.toSchema()).toList(),
      name: name,
      prices: prices?.toSchema(),
      rarity: rarity,
      search: search,
      sortNumber: sortNumber,
      subtitle: subtitle,
      updatedAt: updatedAt,
    );
  }
}
