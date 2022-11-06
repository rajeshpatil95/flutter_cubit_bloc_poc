// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'island.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IslandModel _$IslandModelFromJson(Map<String, dynamic> json) {
  return IslandModel(
    type: json['type'] as String,
    name: json['name'] as String,
    country: json['country'] as String,
    capital: json['capital'] as String,
    currency: json['currency'] as String,
    population: json['population'] as String,
  );
}

Map<String, dynamic> _$IslandModelToJson(IslandModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'country': instance.country,
      'capital': instance.capital,
      'currency': instance.currency,
      'population': instance.population,
    };
