// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_prices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardPricesEntityImpl _$$CardPricesEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CardPricesEntityImpl(
      articlesDisponibles: json['articlesDisponibles'] as int?,
      de: (json['de'] as num?)?.toDouble(),
      nombre: json['nombre'] as int?,
      prixMoyen1Jour: (json['prixMoyen1Jour'] as num?)?.toDouble(),
      prixMoyen30Jours: (json['prixMoyen30Jours'] as num?)?.toDouble(),
      prixMoyen7Jours: (json['prixMoyen7Jours'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CardPricesEntityImplToJson(
        _$CardPricesEntityImpl instance) =>
    <String, dynamic>{
      'articlesDisponibles': instance.articlesDisponibles,
      'de': instance.de,
      'nombre': instance.nombre,
      'prixMoyen1Jour': instance.prixMoyen1Jour,
      'prixMoyen30Jours': instance.prixMoyen30Jours,
      'prixMoyen7Jours': instance.prixMoyen7Jours,
    };
