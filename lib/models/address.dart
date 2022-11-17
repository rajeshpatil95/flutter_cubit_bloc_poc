import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class AddressModel {
  SiteReference? siteReference;
  String? id;
  String? uprn;
  String? parentUPRN;
  String? addressSource;
  String? exchangeGroupCode;
  String? districtCode;
  String? qualifier;
  String? streetNr;
  String? streetName;
  String? postcode;
  String? locality;
  String? city;
  String? country;
  String? poBox;
  String? postalOrganisation;
  String? county;
  String? type;
  GeographicLocationRefOrValue? geographicLocationRefOrValue;
  List<GeographicSubAddress>? geographicSubAddress;

  AddressModel(
      {this.siteReference,
      this.id,
      this.uprn,
      this.parentUPRN,
      this.addressSource,
      this.exchangeGroupCode,
      this.districtCode,
      this.qualifier,
      this.streetNr,
      this.streetName,
      this.postcode,
      this.locality,
      this.city,
      this.country,
      this.poBox,
      this.postalOrganisation,
      this.county,
      this.type,
      this.geographicLocationRefOrValue,
      this.geographicSubAddress});

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddressModelToJson(this);
}

@JsonSerializable()
class SiteReference {
  ListOfTechnology? listOfTechnology;
  ListOfTechnologyRestriction? listOfTechnologyRestriction;

  SiteReference({this.listOfTechnology, this.listOfTechnologyRestriction});

  factory SiteReference.fromJson(Map<String, dynamic> json) =>
      _$SiteReferenceFromJson(json);

  Map<String, dynamic> toJson() => _$SiteReferenceToJson(this);
}

@JsonSerializable()
class ListOfTechnology {
  List<Technology>? technology;

  ListOfTechnology({this.technology});

  factory ListOfTechnology.fromJson(Map<String, dynamic> json) =>
      _$ListOfTechnologyFromJson(json);

  Map<String, dynamic> toJson() => _$ListOfTechnologyToJson(this);
}

@JsonSerializable()
class Technology {
  String? technologyName;
  String? technologyValue;

  Technology({this.technologyName, this.technologyValue});

  factory Technology.fromJson(Map<String, dynamic> json) =>
      _$TechnologyFromJson(json);

  Map<String, dynamic> toJson() => _$TechnologyToJson(this);
}

@JsonSerializable()
class ListOfTechnologyRestriction {
  List<TechnologyRestriction>? technologyRestriction;

  ListOfTechnologyRestriction({this.technologyRestriction});

  factory ListOfTechnologyRestriction.fromJson(Map<String, dynamic> json) =>
      _$ListOfTechnologyRestrictionFromJson(json);

  Map<String, dynamic> toJson() => _$ListOfTechnologyRestrictionToJson(this);
}

@JsonSerializable()
class TechnologyRestriction {
  String? technologyRestrictionName;
  String? technologyRestrictionValue;

  TechnologyRestriction(
      {this.technologyRestrictionName, this.technologyRestrictionValue});

  factory TechnologyRestriction.fromJson(Map<String, dynamic> json) =>
      _$TechnologyRestrictionFromJson(json);

  Map<String, dynamic> toJson() => _$TechnologyRestrictionToJson(this);
}

@JsonSerializable()
class GeographicLocationRefOrValue {
  List<Geometry>? geometry;

  GeographicLocationRefOrValue({this.geometry});

  factory GeographicLocationRefOrValue.fromJson(Map<String, dynamic> json) =>
      _$GeographicLocationRefOrValueFromJson(json);

  Map<String, dynamic> toJson() => _$GeographicLocationRefOrValueToJson(this);
}

@JsonSerializable()
class Geometry {
  Geometry();

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);

  Map<String, dynamic> toJson() => _$GeometryToJson(this);
}

@JsonSerializable()
class GeographicSubAddress {
  String? buildingName;
  String? subBuilding;
  String? subStreet;
  String? subLocality;
  String? type;

  GeographicSubAddress(
      {this.buildingName,
      this.subBuilding,
      this.subStreet,
      this.subLocality,
      this.type});

  factory GeographicSubAddress.fromJson(Map<String, dynamic> json) =>
      _$GeographicSubAddressFromJson(json);

  Map<String, dynamic> toJson() => _$GeographicSubAddressToJson(this);
}
