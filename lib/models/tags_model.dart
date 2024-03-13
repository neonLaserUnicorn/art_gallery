import 'package:json_annotation/json_annotation.dart';

part 'tags_model.g.dart';

@JsonSerializable()
class TagsModel {
  final String? term;
  final String? AAT_URL;
  final String? Wikidata_URL;

  TagsModel(
      {required this.term, required this.AAT_URL, required this.Wikidata_URL});

  factory TagsModel.fromJson(Map<String, dynamic> json) =>
      _$TagsModelFromJson(json);
  Map<String, dynamic> toJson() => _$TagsModelToJson(this);
}
