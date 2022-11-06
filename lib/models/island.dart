import 'package:json_annotation/json_annotation.dart';

part 'island.g.dart';

@JsonSerializable()
class IslandModel {
  String? type;
  String? name;
  String? country;
  String? capital;
  String? currency;
  String? population;

  IslandModel(
      {this.type,
      this.name,
      this.country,
      this.capital,
      this.currency,
      this.population});

  factory IslandModel.fromJson(Map<String, dynamic> json) =>
      _$IslandModelFromJson(json);

  Map<String, dynamic> toJson() => _$IslandModelToJson(this);
}
