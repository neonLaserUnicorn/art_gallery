import "package:json_annotation/json_annotation.dart";

part "constituents_model.g.dart";

@JsonSerializable()
class ConstituentsModel {
  final int constituentID;
  final String role;
  final String name;
  final String constituentULAN_URL;
  final String constituentWikidata_URL;
  final String gender;

  ConstituentsModel(
      {required this.constituentID,
      required this.role,
      required this.name,
      required this.constituentULAN_URL,
      required this.constituentWikidata_URL,
      required this.gender});

  factory ConstituentsModel.fromJson(Map<String, dynamic> json) =>
      _$ConstituentsModelFromJson(json);
  Map<String, dynamic> toJson() => _$ConstituentsModelToJson(this);
}
