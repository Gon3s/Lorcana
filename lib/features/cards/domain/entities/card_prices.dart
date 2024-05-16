import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lorcana_collection/features/cards/data/schemas/card.dart';
import 'package:realm/realm.dart';

part 'card_prices.freezed.dart';
part 'card_prices.g.dart';

@freezed
class CardPricesEntity with _$CardPricesEntity {
  factory CardPricesEntity({
    required int? articlesDisponibles,
    required double? de,
    required int? nombre,
    required double? prixMoyen1Jour,
    required double? prixMoyen30Jours,
    required double? prixMoyen7Jours,
  }) = _CardPricesEntity;
  const CardPricesEntity._();

  factory CardPricesEntity.fromJson(Map<String, dynamic> json) => _$CardPricesEntityFromJson(json);

  factory CardPricesEntity.fromSchema(CardPrices cardPrices) {
    return CardPricesEntity(
      articlesDisponibles: int.tryParse(cardPrices.articlesDisponibles.value.toString()),
      de: double.tryParse(cardPrices.de.value.toString()),
      nombre: int.tryParse(cardPrices.nombre.value.toString()),
      prixMoyen1Jour: double.tryParse(cardPrices.prixMoyen1Jour.value.toString()),
      prixMoyen30Jours: double.tryParse(cardPrices.prixMoyen30Jours.value.toString()),
      prixMoyen7Jours: double.tryParse(cardPrices.prixMoyen7Jours.value.toString()),
    );
  }

  CardPrices toSchema() {
    return CardPrices(
      articlesDisponibles: RealmValue.int(articlesDisponibles ?? 0),
      de: RealmValue.double(de ?? 0.0),
      nombre: RealmValue.int(nombre ?? 0),
      prixMoyen1Jour: RealmValue.double(prixMoyen1Jour ?? 0.0),
      prixMoyen30Jours: RealmValue.double(prixMoyen30Jours ?? 0.0),
      prixMoyen7Jours: RealmValue.double(prixMoyen7Jours ?? 0.0),
    );
  }
}
