// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) => AddressModel(
      siteReference: json['siteReference'] == null
          ? null
          : SiteReference.fromJson(
              json['siteReference'] as Map<String, dynamic>),
      id: json['id'] as String?,
      uprn: json['uprn'] as String?,
      parentUPRN: json['parentUPRN'] as String?,
      addressSource: json['addressSource'] as String?,
      exchangeGroupCode: json['exchangeGroupCode'] as String?,
      districtCode: json['districtCode'] as String?,
      qualifier: json['qualifier'] as String?,
      streetNr: json['streetNr'] as String?,
      streetName: json['streetName'] as String?,
      postcode: json['postcode'] as String?,
      locality: json['locality'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      poBox: json['poBox'] as String?,
      postalOrganisation: json['postalOrganisation'] as String?,
      county: json['county'] as String?,
      type: json['type'] as String?,
      geographicLocationRefOrValue: json['geographicLocationRefOrValue'] == null
          ? null
          : GeographicLocationRefOrValue.fromJson(
              json['geographicLocationRefOrValue'] as Map<String, dynamic>),
      geographicSubAddress: (json['geographicSubAddress'] as List<dynamic>?)
          ?.map((e) => GeographicSubAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AddressModelToJson(AddressModel instance) =>
    <String, dynamic>{
      'siteReference': instance.siteReference,
      'id': instance.id,
      'uprn': instance.uprn,
      'parentUPRN': instance.parentUPRN,
      'addressSource': instance.addressSource,
      'exchangeGroupCode': instance.exchangeGroupCode,
      'districtCode': instance.districtCode,
      'qualifier': instance.qualifier,
      'streetNr': instance.streetNr,
      'streetName': instance.streetName,
      'postcode': instance.postcode,
      'locality': instance.locality,
      'city': instance.city,
      'country': instance.country,
      'poBox': instance.poBox,
      'postalOrganisation': instance.postalOrganisation,
      'county': instance.county,
      'type': instance.type,
      'geographicLocationRefOrValue': instance.geographicLocationRefOrValue,
      'geographicSubAddress': instance.geographicSubAddress,
    };

SiteReference _$SiteReferenceFromJson(Map<String, dynamic> json) =>
    SiteReference(
      listOfTechnology: json['listOfTechnology'] == null
          ? null
          : ListOfTechnology.fromJson(
              json['listOfTechnology'] as Map<String, dynamic>),
      listOfTechnologyRestriction: json['listOfTechnologyRestriction'] == null
          ? null
          : ListOfTechnologyRestriction.fromJson(
              json['listOfTechnologyRestriction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SiteReferenceToJson(SiteReference instance) =>
    <String, dynamic>{
      'listOfTechnology': instance.listOfTechnology,
      'listOfTechnologyRestriction': instance.listOfTechnologyRestriction,
    };

ListOfTechnology _$ListOfTechnologyFromJson(Map<String, dynamic> json) =>
    ListOfTechnology(
      technology: (json['technology'] as List<dynamic>?)
          ?.map((e) => Technology.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListOfTechnologyToJson(ListOfTechnology instance) =>
    <String, dynamic>{
      'technology': instance.technology,
    };

Technology _$TechnologyFromJson(Map<String, dynamic> json) => Technology(
      technologyName: json['technologyName'] as String?,
      technologyValue: json['technologyValue'] as String?,
    );

Map<String, dynamic> _$TechnologyToJson(Technology instance) =>
    <String, dynamic>{
      'technologyName': instance.technologyName,
      'technologyValue': instance.technologyValue,
    };

ListOfTechnologyRestriction _$ListOfTechnologyRestrictionFromJson(
        Map<String, dynamic> json) =>
    ListOfTechnologyRestriction(
      technologyRestriction: (json['technologyRestriction'] as List<dynamic>?)
          ?.map(
              (e) => TechnologyRestriction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListOfTechnologyRestrictionToJson(
        ListOfTechnologyRestriction instance) =>
    <String, dynamic>{
      'technologyRestriction': instance.technologyRestriction,
    };

TechnologyRestriction _$TechnologyRestrictionFromJson(
        Map<String, dynamic> json) =>
    TechnologyRestriction(
      technologyRestrictionName: json['technologyRestrictionName'] as String?,
      technologyRestrictionValue: json['technologyRestrictionValue'] as String?,
    );

Map<String, dynamic> _$TechnologyRestrictionToJson(
        TechnologyRestriction instance) =>
    <String, dynamic>{
      'technologyRestrictionName': instance.technologyRestrictionName,
      'technologyRestrictionValue': instance.technologyRestrictionValue,
    };

GeographicLocationRefOrValue _$GeographicLocationRefOrValueFromJson(
        Map<String, dynamic> json) =>
    GeographicLocationRefOrValue(
      geometry: (json['geometry'] as List<dynamic>?)
          ?.map((e) => Geometry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GeographicLocationRefOrValueToJson(
        GeographicLocationRefOrValue instance) =>
    <String, dynamic>{
      'geometry': instance.geometry,
    };

Geometry _$GeometryFromJson(Map<String, dynamic> json) => Geometry();

Map<String, dynamic> _$GeometryToJson(Geometry instance) => <String, dynamic>{};

GeographicSubAddress _$GeographicSubAddressFromJson(
        Map<String, dynamic> json) =>
    GeographicSubAddress(
      buildingName: json['buildingName'] as String?,
      subBuilding: json['subBuilding'] as String?,
      subStreet: json['subStreet'] as String?,
      subLocality: json['subLocality'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$GeographicSubAddressToJson(
        GeographicSubAddress instance) =>
    <String, dynamic>{
      'buildingName': instance.buildingName,
      'subBuilding': instance.subBuilding,
      'subStreet': instance.subStreet,
      'subLocality': instance.subLocality,
      'type': instance.type,
    };
