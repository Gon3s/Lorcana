import 'package:realm/realm.dart';

part 'card.realm.dart';

@RealmModel()
@MapTo('card')
class _Card {
  @PrimaryKey()
  @MapTo('_id')
  late ObjectId id;

  @MapTo('card_identifier')
  String? cardIdentifier;

  @MapTo('card_url')
  late String cardUrl;

  @MapTo('deck_building_id')
  String? deckBuildingId;

  @MapTo('image_urls')
  late List<_CardImageUrls> imageUrls;

  String? name;

  late _CardPrices? prices;

  String? rarity;

  @Indexed(RealmIndexType.fullText)
  String? search;

  @MapTo('sort_number')
  int? sortNumber;

  String? subtitle;

  @MapTo('updated_at')
  DateTime? updatedAt;

  // Backlink field. Links back to the `tasks` property in the `_User` model.
  @Backlink(#card)
  late Iterable<_CardFavorites> cardFavorites;
}

@RealmModel(ObjectType.embeddedObject)
@MapTo('card_prices')
class _CardPrices {
  @MapTo('Articles disponibles')
  late RealmValue articlesDisponibles;

  @MapTo('De')
  late RealmValue de;

  @MapTo('Nombre')
  late RealmValue nombre;

  @MapTo('Prix moyen 1 jour')
  late RealmValue prixMoyen1Jour;

  @MapTo('Prix moyen 30 jours')
  late RealmValue prixMoyen30Jours;

  @MapTo('Prix moyen 7 jours')
  late RealmValue prixMoyen7Jours;

  @MapTo('Tendance des prix')
  late RealmValue tendanceDesPrix;

  String? url;
}

@RealmModel(ObjectType.embeddedObject)
@MapTo('card_image_urls')
class _CardImageUrls {
  int? height;

  String? url;
}

@RealmModel()
@MapTo('card_favorites')
class _CardFavorites {
  @PrimaryKey()
  @MapTo('_id')
  late ObjectId id;

  late _Card? card;

  @MapTo('owner_id')
  late String ownerId;

  @MapTo('created_at')
  late DateTime createdAt;

  @MapTo('updated_at')
  DateTime? updatedAt;
}
