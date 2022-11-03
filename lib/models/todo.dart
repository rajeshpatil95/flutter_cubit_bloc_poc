import 'package:json_annotation/json_annotation.dart';

part 'todo.g.dart';

@JsonSerializable()
class TodoModel {
  String? type;
  String? name;
  String? country;
  String? capital;
  String? currency;
  String? population;

  TodoModel(
      {this.type,
      this.name,
      this.country,
      this.capital,
      this.currency,
      this.population});

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);

  Map<String, dynamic> toJson() => _$TodoModelToJson(this);
}
