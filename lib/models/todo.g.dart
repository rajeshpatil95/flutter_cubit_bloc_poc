// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodoModel _$TodoModelFromJson(Map<String, dynamic> json) {
  return TodoModel(
    type: json['type'] as String,
    name: json['name'] as String,
    country: json['country'] as String,
    capital: json['capital'] as String,
    currency: json['currency'] as String,
    population: json['population'] as String,
  );
}

Map<String, dynamic> _$TodoModelToJson(TodoModel instance) => <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'country': instance.country,
      'capital': instance.capital,
      'currency': instance.currency,
      'population': instance.population,
    };
