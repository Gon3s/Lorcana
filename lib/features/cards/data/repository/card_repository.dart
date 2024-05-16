// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';
import 'package:lorcana_collection/core/data/remote/realm_services.dart';
import 'package:lorcana_collection/features/cards/data/schemas/card.dart';
import 'package:lorcana_collection/features/cards/domain/entities/card.dart';
import 'package:lorcana_collection/features/cards/domain/entities/card_favorites.dart';
import 'package:lorcana_collection/util/colored_debug_printer.dart';
import 'package:realm/realm.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'card_repository.g.dart';

enum Chapter {
  allChampter('All chapter', null),
  chapter1('Chapter 1', 'FR 1'),
  chapter2('Chapter 2', 'FR 2'),
  chapter3('Chapter 3', 'FR 3');

  const Chapter(this.name, this.value);
  final String name;
  final String? value;
}

enum Order { asc, desc }

enum CardSort {
  numberAsc('Order', 'sort_number', Order.asc),
  nameAsc('Name A-Z', 'name', Order.asc),
  nameDesc('Name Z-A', 'name', Order.desc),
  priceAsc('Price low to high', 'prices.de', Order.asc),
  priceDesc('Price high to low', 'prices.de', Order.desc);

  const CardSort(this.name, this.field, this.order);
  final String name;
  final String field;
  final Order order;
}

typedef CardQueryData = ({String search, CardSort sort, Chapter chapter, bool isFavorite});

@riverpod
CardRepository cardRepository(CardRepositoryRef ref) {
  return CardRepository(ref);
}

class CardRepository {
  CardRepository(this.ref);
  final CardRepositoryRef ref;

  Future<void> toggleCardFavorite({required CardEntity card}) async {
    try {
      final realmServices = ref.watch(realmServicesProvider);

      if (realmServices == null) {
        throw Exception('RealmServices is null');
      }

      final realm = realmServices.realm;
      final cardShema = card.toSchema();

      final cardFavorite = realm.query<CardFavorites>(
        r'card.id == $0 AND ownerId == $1',
        [cardShema.id, realmServices.currentUser!.id],
      ).firstOrNull;

      if (cardFavorite != null) {
        realm.write(() {
          realm.delete<CardFavorites>(cardFavorite);
        });
      } else {
        final cardFavoriteSchema = realm.write<CardFavorites?>(() {
          return realm.add(
            CardFavorites(
              ObjectId(),
              realmServices.currentUser!.id,
              DateTime.now(),
              card: cardShema,
            ),
            update: true,
          );
        });

        if (cardFavoriteSchema == null) {
          throw Exception('Error adding card favorite');
        }
      }
    } catch (e) {
      Print.red('DLOG', 'addCardFavorite error: $e');
      rethrow;
    }
  }

  Future<List<CardFavoritesEntity>> getAllFavorites() async {
    try {
      final realmServices = ref.watch(realmServicesProvider);

      if (realmServices == null) {
        throw Exception('RealmServices is null');
      }

      final realm = realmServices.realm;

      final cardFavorites = realm.query<CardFavorites>(
        'TRUEPREDICATE SORT(created_at DESC)',
      );

      return cardFavorites.map(CardFavoritesEntity.fromSchema).toList();
    } catch (e) {
      Print.red('DLOG', 'getAllFavorites error: $e');
      rethrow;
    }
  }

  Future<List<CardEntity>> getCards({required CardQueryData cardQueryData}) async {
    Print.green('DLOG', 'getCards: $cardQueryData');
    try {
      final realmServices = ref.watch(realmServicesProvider);

      if (realmServices == null) {
        throw Exception('RealmServices is null');
      }

      final cards = <CardEntity>[];

      var query = 'TRUEPREDICATE';
      if (cardQueryData.isFavorite) {
        query = 'cardFavorites.@count == 1';
      }

      var search = '';
      var chapter = '';
      if (cardQueryData.search.isNotEmpty) {
        query += r' AND search TEXT $0';
        search = '*${cardQueryData.search}*';
      }

      if (cardQueryData.chapter.value != null) {
        query += r' AND card_identifier LIKE $1';
        chapter = '*${cardQueryData.chapter.value}*';
      }

      query += ' SORT(${cardQueryData.sort.field} ${cardQueryData.sort.order.name})';
      Print.green('DLOG', 'query: $query');

      final allCards = realmServices.realm.query<Card>(query, [search, chapter]);

      if (allCards.isEmpty) {
        return cards;
      }

      cards.addAll(allCards.map(CardEntity.fromSchema).toList());

      return cards;
    } catch (e) {
      Print.red('DLOG', 'getCards error: $e');
      rethrow;
    }
  }
}

@riverpod
Future<List<CardEntity>> cardsListSearch(CardsListSearchRef ref, CardQueryData cardQueryData) async {
  return ref.watch(cardRepositoryProvider).getCards(cardQueryData: cardQueryData);
}

@riverpod
Stream<bool> isCardFavorite(IsCardFavoriteRef ref, CardEntity card) {
  final realmServices = ref.watch(realmServicesProvider);

  if (realmServices == null) {
    throw Exception('RealmServices is null');
  }

  final realm = realmServices.realm;

  final cardFavorite = realm.query<CardFavorites>(
    r'card.id == $0 AND ownerId == $1',
    [card.toSchema().id, realmServices.currentUser!.id],
  ).changes;

  return cardFavorite.map((event) => event.results.isNotEmpty);
}
