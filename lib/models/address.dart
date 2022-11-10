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

  AddressModel.fromJson(Map<String, dynamic> json) {
    siteReference = json['siteReference'] != null
        ? SiteReference.fromJson(json['siteReference'])
        : null;
    id = json['id'];
    uprn = json['uprn'];
    parentUPRN = json['parentUPRN'];
    addressSource = json['addressSource'];
    exchangeGroupCode = json['exchangeGroupCode'];
    districtCode = json['districtCode'];
    qualifier = json['qualifier'];
    streetNr = json['streetNr'];
    streetName = json['streetName'];
    postcode = json['postcode'];
    locality = json['locality'];
    city = json['city'];
    country = json['country'];
    poBox = json['poBox'];
    postalOrganisation = json['postalOrganisation'];
    county = json['county'];
    type = json['@type'];
    geographicLocationRefOrValue = json['geographicLocationRefOrValue'] != null
        ? GeographicLocationRefOrValue.fromJson(
            json['geographicLocationRefOrValue'])
        : null;
    if (json['geographicSubAddress'] != null) {
      geographicSubAddress = <GeographicSubAddress>[];
      json['geographicSubAddress'].forEach((v) {
        geographicSubAddress!.add(GeographicSubAddress.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.siteReference != null) {
      data['siteReference'] = this.siteReference!.toJson();
    }
    data['id'] = this.id;
    data['uprn'] = this.uprn;
    data['parentUPRN'] = this.parentUPRN;
    data['addressSource'] = this.addressSource;
    data['exchangeGroupCode'] = this.exchangeGroupCode;
    data['districtCode'] = this.districtCode;
    data['qualifier'] = this.qualifier;
    data['streetNr'] = this.streetNr;
    data['streetName'] = this.streetName;
    data['postcode'] = this.postcode;
    data['locality'] = this.locality;
    data['city'] = this.city;
    data['country'] = this.country;
    data['poBox'] = this.poBox;
    data['postalOrganisation'] = this.postalOrganisation;
    data['county'] = this.county;
    data['@type'] = this.type;
    if (this.geographicLocationRefOrValue != null) {
      data['geographicLocationRefOrValue'] =
          this.geographicLocationRefOrValue!.toJson();
    }
    if (this.geographicSubAddress != null) {
      data['geographicSubAddress'] =
          this.geographicSubAddress!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SiteReference {
  ListOfTechnology? listOfTechnology;
  ListOfTechnologyRestriction? listOfTechnologyRestriction;

  SiteReference({this.listOfTechnology, this.listOfTechnologyRestriction});

  SiteReference.fromJson(Map<String, dynamic> json) {
    listOfTechnology = json['listOfTechnology'] != null
        ? ListOfTechnology.fromJson(json['listOfTechnology'])
        : null;
    listOfTechnologyRestriction = json['listOfTechnologyRestriction'] != null
        ? ListOfTechnologyRestriction.fromJson(
            json['listOfTechnologyRestriction'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.listOfTechnology != null) {
      data['listOfTechnology'] = this.listOfTechnology!.toJson();
    }
    if (this.listOfTechnologyRestriction != null) {
      data['listOfTechnologyRestriction'] =
          this.listOfTechnologyRestriction!.toJson();
    }
    return data;
  }
}

class ListOfTechnology {
  List<Technology>? technology;

  ListOfTechnology({this.technology});

  ListOfTechnology.fromJson(Map<String, dynamic> json) {
    if (json['technology'] != null) {
      technology = <Technology>[];
      json['technology'].forEach((v) {
        technology!.add(Technology.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.technology != null) {
      data['technology'] = this.technology!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Technology {
  String? technologyName;
  String? technologyValue;

  Technology({this.technologyName, this.technologyValue});

  Technology.fromJson(Map<String, dynamic> json) {
    technologyName = json['technologyName'];
    technologyValue = json['technologyValue'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['technologyName'] = this.technologyName;
    data['technologyValue'] = this.technologyValue;
    return data;
  }
}

class ListOfTechnologyRestriction {
  List<TechnologyRestriction>? technologyRestriction;

  ListOfTechnologyRestriction({this.technologyRestriction});

  ListOfTechnologyRestriction.fromJson(Map<String, dynamic> json) {
    if (json['technologyRestriction'] != null) {
      technologyRestriction = <TechnologyRestriction>[];
      json['technologyRestriction'].forEach((v) {
        technologyRestriction!.add(TechnologyRestriction.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.technologyRestriction != null) {
      data['technologyRestriction'] =
          this.technologyRestriction!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TechnologyRestriction {
  String? technologyRestrictionName;
  String? technologyRestrictionValue;

  TechnologyRestriction(
      {this.technologyRestrictionName, this.technologyRestrictionValue});

  TechnologyRestriction.fromJson(Map<String, dynamic> json) {
    technologyRestrictionName = json['technologyRestrictionName'];
    technologyRestrictionValue = json['technologyRestrictionValue'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['technologyRestrictionName'] = this.technologyRestrictionName;
    data['technologyRestrictionValue'] = this.technologyRestrictionValue;
    return data;
  }
}

class GeographicLocationRefOrValue {
  List<Geometry>? geometry;

  GeographicLocationRefOrValue({this.geometry});

  GeographicLocationRefOrValue.fromJson(Map<String, dynamic> json) {
    if (json['geometry'] != null) {
      geometry = <Geometry>[];
      json['geometry'].forEach((v) {
        geometry!.add(Geometry.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.geometry != null) {
      data['geometry'] = this.geometry!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Geometry {
  Geometry();

  Geometry.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    return data;
  }
}

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

  GeographicSubAddress.fromJson(Map<String, dynamic> json) {
    buildingName = json['buildingName'];
    subBuilding = json['subBuilding'];
    subStreet = json['subStreet'];
    subLocality = json['subLocality'];
    type = json['@type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['buildingName'] = this.buildingName;
    data['subBuilding'] = this.subBuilding;
    data['subStreet'] = this.subStreet;
    data['subLocality'] = this.subLocality;
    data['@type'] = this.type;
    return data;
  }
}
