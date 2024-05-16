// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Card extends _Card with RealmEntity, RealmObjectBase, RealmObject {
  Card(
    ObjectId id,
    String cardUrl, {
    String? cardIdentifier,
    String? deckBuildingId,
    Iterable<CardImageUrls> imageUrls = const [],
    String? name,
    CardPrices? prices,
    String? rarity,
    String? search,
    int? sortNumber,
    String? subtitle,
    DateTime? updatedAt,
  }) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'card_identifier', cardIdentifier);
    RealmObjectBase.set(this, 'card_url', cardUrl);
    RealmObjectBase.set(this, 'deck_building_id', deckBuildingId);
    RealmObjectBase.set<RealmList<CardImageUrls>>(
        this, 'image_urls', RealmList<CardImageUrls>(imageUrls));
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'prices', prices);
    RealmObjectBase.set(this, 'rarity', rarity);
    RealmObjectBase.set(this, 'search', search);
    RealmObjectBase.set(this, 'sort_number', sortNumber);
    RealmObjectBase.set(this, 'subtitle', subtitle);
    RealmObjectBase.set(this, 'updated_at', updatedAt);
  }

  Card._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, '_id', value);

  @override
  String? get cardIdentifier =>
      RealmObjectBase.get<String>(this, 'card_identifier') as String?;
  @override
  set cardIdentifier(String? value) =>
      RealmObjectBase.set(this, 'card_identifier', value);

  @override
  String get cardUrl => RealmObjectBase.get<String>(this, 'card_url') as String;
  @override
  set cardUrl(String value) => RealmObjectBase.set(this, 'card_url', value);

  @override
  String? get deckBuildingId =>
      RealmObjectBase.get<String>(this, 'deck_building_id') as String?;
  @override
  set deckBuildingId(String? value) =>
      RealmObjectBase.set(this, 'deck_building_id', value);

  @override
  RealmList<CardImageUrls> get imageUrls =>
      RealmObjectBase.get<CardImageUrls>(this, 'image_urls')
          as RealmList<CardImageUrls>;
  @override
  set imageUrls(covariant RealmList<CardImageUrls> value) =>
      throw RealmUnsupportedSetError();

  @override
  String? get name => RealmObjectBase.get<String>(this, 'name') as String?;
  @override
  set name(String? value) => RealmObjectBase.set(this, 'name', value);

  @override
  CardPrices? get prices =>
      RealmObjectBase.get<CardPrices>(this, 'prices') as CardPrices?;
  @override
  set prices(covariant CardPrices? value) =>
      RealmObjectBase.set(this, 'prices', value);

  @override
  String? get rarity => RealmObjectBase.get<String>(this, 'rarity') as String?;
  @override
  set rarity(String? value) => RealmObjectBase.set(this, 'rarity', value);

  @override
  String? get search => RealmObjectBase.get<String>(this, 'search') as String?;
  @override
  set search(String? value) => RealmObjectBase.set(this, 'search', value);

  @override
  int? get sortNumber => RealmObjectBase.get<int>(this, 'sort_number') as int?;
  @override
  set sortNumber(int? value) => RealmObjectBase.set(this, 'sort_number', value);

  @override
  String? get subtitle =>
      RealmObjectBase.get<String>(this, 'subtitle') as String?;
  @override
  set subtitle(String? value) => RealmObjectBase.set(this, 'subtitle', value);

  @override
  DateTime? get updatedAt =>
      RealmObjectBase.get<DateTime>(this, 'updated_at') as DateTime?;
  @override
  set updatedAt(DateTime? value) =>
      RealmObjectBase.set(this, 'updated_at', value);

  @override
  RealmResults<CardFavorites> get cardFavorites {
    if (!isManaged) {
      throw RealmError('Using backlinks is only possible for managed objects.');
    }
    return RealmObjectBase.get<CardFavorites>(this, 'cardFavorites')
        as RealmResults<CardFavorites>;
  }

  @override
  set cardFavorites(covariant RealmResults<CardFavorites> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Card>> get changes =>
      RealmObjectBase.getChanges<Card>(this);

  @override
  Card freeze() => RealmObjectBase.freezeObject<Card>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      '_id': id.toEJson(),
      'card_identifier': cardIdentifier.toEJson(),
      'card_url': cardUrl.toEJson(),
      'deck_building_id': deckBuildingId.toEJson(),
      'image_urls': imageUrls.toEJson(),
      'name': name.toEJson(),
      'prices': prices.toEJson(),
      'rarity': rarity.toEJson(),
      'search': search.toEJson(),
      'sort_number': sortNumber.toEJson(),
      'subtitle': subtitle.toEJson(),
      'updated_at': updatedAt.toEJson(),
      'cardFavorites': cardFavorites.toEJson(),
    };
  }

  static EJsonValue _toEJson(Card value) => value.toEJson();
  static Card _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        '_id': EJsonValue id,
        'card_identifier': EJsonValue cardIdentifier,
        'card_url': EJsonValue cardUrl,
        'deck_building_id': EJsonValue deckBuildingId,
        'image_urls': EJsonValue imageUrls,
        'name': EJsonValue name,
        'prices': EJsonValue prices,
        'rarity': EJsonValue rarity,
        'search': EJsonValue search,
        'sort_number': EJsonValue sortNumber,
        'subtitle': EJsonValue subtitle,
        'updated_at': EJsonValue updatedAt,
        'cardFavorites': EJsonValue cardFavorites,
      } =>
        Card(
          fromEJson(id),
          fromEJson(cardUrl),
          cardIdentifier: fromEJson(cardIdentifier),
          deckBuildingId: fromEJson(deckBuildingId),
          imageUrls: fromEJson(imageUrls),
          name: fromEJson(name),
          prices: fromEJson(prices),
          rarity: fromEJson(rarity),
          search: fromEJson(search),
          sortNumber: fromEJson(sortNumber),
          subtitle: fromEJson(subtitle),
          updatedAt: fromEJson(updatedAt),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Card._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Card, 'card', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', primaryKey: true),
      SchemaProperty('cardIdentifier', RealmPropertyType.string,
          mapTo: 'card_identifier', optional: true),
      SchemaProperty('cardUrl', RealmPropertyType.string, mapTo: 'card_url'),
      SchemaProperty('deckBuildingId', RealmPropertyType.string,
          mapTo: 'deck_building_id', optional: true),
      SchemaProperty('imageUrls', RealmPropertyType.object,
          mapTo: 'image_urls',
          linkTarget: 'card_image_urls',
          collectionType: RealmCollectionType.list),
      SchemaProperty('name', RealmPropertyType.string, optional: true),
      SchemaProperty('prices', RealmPropertyType.object,
          optional: true, linkTarget: 'card_prices'),
      SchemaProperty('rarity', RealmPropertyType.string, optional: true),
      SchemaProperty('search', RealmPropertyType.string,
          optional: true, indexType: RealmIndexType.fullText),
      SchemaProperty('sortNumber', RealmPropertyType.int,
          mapTo: 'sort_number', optional: true),
      SchemaProperty('subtitle', RealmPropertyType.string, optional: true),
      SchemaProperty('updatedAt', RealmPropertyType.timestamp,
          mapTo: 'updated_at', optional: true),
      SchemaProperty('cardFavorites', RealmPropertyType.linkingObjects,
          linkOriginProperty: 'card',
          collectionType: RealmCollectionType.list,
          linkTarget: 'card_favorites'),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class CardPrices extends _CardPrices
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  CardPrices({
    RealmValue articlesDisponibles = const RealmValue.nullValue(),
    RealmValue de = const RealmValue.nullValue(),
    RealmValue nombre = const RealmValue.nullValue(),
    RealmValue prixMoyen1Jour = const RealmValue.nullValue(),
    RealmValue prixMoyen30Jours = const RealmValue.nullValue(),
    RealmValue prixMoyen7Jours = const RealmValue.nullValue(),
    RealmValue tendanceDesPrix = const RealmValue.nullValue(),
    String? url,
  }) {
    RealmObjectBase.set(this, 'Articles disponibles', articlesDisponibles);
    RealmObjectBase.set(this, 'De', de);
    RealmObjectBase.set(this, 'Nombre', nombre);
    RealmObjectBase.set(this, 'Prix moyen 1 jour', prixMoyen1Jour);
    RealmObjectBase.set(this, 'Prix moyen 30 jours', prixMoyen30Jours);
    RealmObjectBase.set(this, 'Prix moyen 7 jours', prixMoyen7Jours);
    RealmObjectBase.set(this, 'Tendance des prix', tendanceDesPrix);
    RealmObjectBase.set(this, 'url', url);
  }

  CardPrices._();

  @override
  RealmValue get articlesDisponibles =>
      RealmObjectBase.get<RealmValue>(this, 'Articles disponibles')
          as RealmValue;
  @override
  set articlesDisponibles(RealmValue value) =>
      RealmObjectBase.set(this, 'Articles disponibles', value);

  @override
  RealmValue get de =>
      RealmObjectBase.get<RealmValue>(this, 'De') as RealmValue;
  @override
  set de(RealmValue value) => RealmObjectBase.set(this, 'De', value);

  @override
  RealmValue get nombre =>
      RealmObjectBase.get<RealmValue>(this, 'Nombre') as RealmValue;
  @override
  set nombre(RealmValue value) => RealmObjectBase.set(this, 'Nombre', value);

  @override
  RealmValue get prixMoyen1Jour =>
      RealmObjectBase.get<RealmValue>(this, 'Prix moyen 1 jour') as RealmValue;
  @override
  set prixMoyen1Jour(RealmValue value) =>
      RealmObjectBase.set(this, 'Prix moyen 1 jour', value);

  @override
  RealmValue get prixMoyen30Jours =>
      RealmObjectBase.get<RealmValue>(this, 'Prix moyen 30 jours')
          as RealmValue;
  @override
  set prixMoyen30Jours(RealmValue value) =>
      RealmObjectBase.set(this, 'Prix moyen 30 jours', value);

  @override
  RealmValue get prixMoyen7Jours =>
      RealmObjectBase.get<RealmValue>(this, 'Prix moyen 7 jours') as RealmValue;
  @override
  set prixMoyen7Jours(RealmValue value) =>
      RealmObjectBase.set(this, 'Prix moyen 7 jours', value);

  @override
  RealmValue get tendanceDesPrix =>
      RealmObjectBase.get<RealmValue>(this, 'Tendance des prix') as RealmValue;
  @override
  set tendanceDesPrix(RealmValue value) =>
      RealmObjectBase.set(this, 'Tendance des prix', value);

  @override
  String? get url => RealmObjectBase.get<String>(this, 'url') as String?;
  @override
  set url(String? value) => RealmObjectBase.set(this, 'url', value);

  @override
  Stream<RealmObjectChanges<CardPrices>> get changes =>
      RealmObjectBase.getChanges<CardPrices>(this);

  @override
  CardPrices freeze() => RealmObjectBase.freezeObject<CardPrices>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'Articles disponibles': articlesDisponibles.toEJson(),
      'De': de.toEJson(),
      'Nombre': nombre.toEJson(),
      'Prix moyen 1 jour': prixMoyen1Jour.toEJson(),
      'Prix moyen 30 jours': prixMoyen30Jours.toEJson(),
      'Prix moyen 7 jours': prixMoyen7Jours.toEJson(),
      'Tendance des prix': tendanceDesPrix.toEJson(),
      'url': url.toEJson(),
    };
  }

  static EJsonValue _toEJson(CardPrices value) => value.toEJson();
  static CardPrices _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'Articles disponibles': EJsonValue articlesDisponibles,
        'De': EJsonValue de,
        'Nombre': EJsonValue nombre,
        'Prix moyen 1 jour': EJsonValue prixMoyen1Jour,
        'Prix moyen 30 jours': EJsonValue prixMoyen30Jours,
        'Prix moyen 7 jours': EJsonValue prixMoyen7Jours,
        'Tendance des prix': EJsonValue tendanceDesPrix,
        'url': EJsonValue url,
      } =>
        CardPrices(
          articlesDisponibles: fromEJson(articlesDisponibles),
          de: fromEJson(de),
          nombre: fromEJson(nombre),
          prixMoyen1Jour: fromEJson(prixMoyen1Jour),
          prixMoyen30Jours: fromEJson(prixMoyen30Jours),
          prixMoyen7Jours: fromEJson(prixMoyen7Jours),
          tendanceDesPrix: fromEJson(tendanceDesPrix),
          url: fromEJson(url),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(CardPrices._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.embeddedObject, CardPrices, 'card_prices', [
      SchemaProperty('articlesDisponibles', RealmPropertyType.mixed,
          mapTo: 'Articles disponibles', optional: true),
      SchemaProperty('de', RealmPropertyType.mixed,
          mapTo: 'De', optional: true),
      SchemaProperty('nombre', RealmPropertyType.mixed,
          mapTo: 'Nombre', optional: true),
      SchemaProperty('prixMoyen1Jour', RealmPropertyType.mixed,
          mapTo: 'Prix moyen 1 jour', optional: true),
      SchemaProperty('prixMoyen30Jours', RealmPropertyType.mixed,
          mapTo: 'Prix moyen 30 jours', optional: true),
      SchemaProperty('prixMoyen7Jours', RealmPropertyType.mixed,
          mapTo: 'Prix moyen 7 jours', optional: true),
      SchemaProperty('tendanceDesPrix', RealmPropertyType.mixed,
          mapTo: 'Tendance des prix', optional: true),
      SchemaProperty('url', RealmPropertyType.string, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class CardImageUrls extends _CardImageUrls
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  CardImageUrls({
    int? height,
    String? url,
  }) {
    RealmObjectBase.set(this, 'height', height);
    RealmObjectBase.set(this, 'url', url);
  }

  CardImageUrls._();

  @override
  int? get height => RealmObjectBase.get<int>(this, 'height') as int?;
  @override
  set height(int? value) => RealmObjectBase.set(this, 'height', value);

  @override
  String? get url => RealmObjectBase.get<String>(this, 'url') as String?;
  @override
  set url(String? value) => RealmObjectBase.set(this, 'url', value);

  @override
  Stream<RealmObjectChanges<CardImageUrls>> get changes =>
      RealmObjectBase.getChanges<CardImageUrls>(this);

  @override
  CardImageUrls freeze() => RealmObjectBase.freezeObject<CardImageUrls>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'height': height.toEJson(),
      'url': url.toEJson(),
    };
  }

  static EJsonValue _toEJson(CardImageUrls value) => value.toEJson();
  static CardImageUrls _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'height': EJsonValue height,
        'url': EJsonValue url,
      } =>
        CardImageUrls(
          height: fromEJson(height),
          url: fromEJson(url),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(CardImageUrls._);
    register(_toEJson, _fromEJson);
    return SchemaObject(
        ObjectType.embeddedObject, CardImageUrls, 'card_image_urls', [
      SchemaProperty('height', RealmPropertyType.int, optional: true),
      SchemaProperty('url', RealmPropertyType.string, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class CardFavorites extends _CardFavorites
    with RealmEntity, RealmObjectBase, RealmObject {
  CardFavorites(
    ObjectId id,
    String ownerId,
    DateTime createdAt, {
    Card? card,
    DateTime? updatedAt,
  }) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'card', card);
    RealmObjectBase.set(this, 'owner_id', ownerId);
    RealmObjectBase.set(this, 'created_at', createdAt);
    RealmObjectBase.set(this, 'updated_at', updatedAt);
  }

  CardFavorites._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, '_id', value);

  @override
  Card? get card => RealmObjectBase.get<Card>(this, 'card') as Card?;
  @override
  set card(covariant Card? value) => RealmObjectBase.set(this, 'card', value);

  @override
  String get ownerId => RealmObjectBase.get<String>(this, 'owner_id') as String;
  @override
  set ownerId(String value) => RealmObjectBase.set(this, 'owner_id', value);

  @override
  DateTime get createdAt =>
      RealmObjectBase.get<DateTime>(this, 'created_at') as DateTime;
  @override
  set createdAt(DateTime value) =>
      RealmObjectBase.set(this, 'created_at', value);

  @override
  DateTime? get updatedAt =>
      RealmObjectBase.get<DateTime>(this, 'updated_at') as DateTime?;
  @override
  set updatedAt(DateTime? value) =>
      RealmObjectBase.set(this, 'updated_at', value);

  @override
  Stream<RealmObjectChanges<CardFavorites>> get changes =>
      RealmObjectBase.getChanges<CardFavorites>(this);

  @override
  CardFavorites freeze() => RealmObjectBase.freezeObject<CardFavorites>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      '_id': id.toEJson(),
      'card': card.toEJson(),
      'owner_id': ownerId.toEJson(),
      'created_at': createdAt.toEJson(),
      'updated_at': updatedAt.toEJson(),
    };
  }

  static EJsonValue _toEJson(CardFavorites value) => value.toEJson();
  static CardFavorites _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        '_id': EJsonValue id,
        'card': EJsonValue card,
        'owner_id': EJsonValue ownerId,
        'created_at': EJsonValue createdAt,
        'updated_at': EJsonValue updatedAt,
      } =>
        CardFavorites(
          fromEJson(id),
          fromEJson(ownerId),
          fromEJson(createdAt),
          card: fromEJson(card),
          updatedAt: fromEJson(updatedAt),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(CardFavorites._);
    register(_toEJson, _fromEJson);
    return SchemaObject(
        ObjectType.realmObject, CardFavorites, 'card_favorites', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', primaryKey: true),
      SchemaProperty('card', RealmPropertyType.object,
          optional: true, linkTarget: 'card'),
      SchemaProperty('ownerId', RealmPropertyType.string, mapTo: 'owner_id'),
      SchemaProperty('createdAt', RealmPropertyType.timestamp,
          mapTo: 'created_at'),
      SchemaProperty('updatedAt', RealmPropertyType.timestamp,
          mapTo: 'updated_at', optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
