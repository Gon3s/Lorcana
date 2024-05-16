import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lorcana_collection/features/cards/data/schemas/card.dart';
import 'package:lorcana_collection/features/cards/domain/entities/card.dart';
import 'package:realm/realm.dart';

part 'card_favorites.freezed.dart';
part 'card_favorites.g.dart';

@freezed
class CardFavoritesEntity with _$CardFavoritesEntity {
  factory CardFavoritesEntity({
    required String id,
    required CardEntity card,
    required String ownerId,
    required DateTime createdAt,
    required DateTime? updatedAt,
  }) = _CardFavoritesEntity;
  const CardFavoritesEntity._();

  factory CardFavoritesEntity.fromJson(Map<String, dynamic> json) => _$CardFavoritesEntityFromJson(json);

  factory CardFavoritesEntity.fromSchema(CardFavorites cardFavorite) {
    return CardFavoritesEntity(
      id: cardFavorite.id.toString(),
      card: CardEntity.fromSchema(cardFavorite.card!),
      ownerId: cardFavorite.ownerId,
      createdAt: cardFavorite.createdAt,
      updatedAt: cardFavorite.updatedAt,
    );
  }

  CardFavorites toSchema() {
    return CardFavorites(
      ObjectId.fromHexString(id),
      ownerId,
      createdAt,
      card: card.toSchema(),
      updatedAt: updatedAt,
    );
  }
}
