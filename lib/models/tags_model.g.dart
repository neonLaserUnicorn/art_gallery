// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tags_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TagsModel _$TagsModelFromJson(Map<String, dynamic> json) => TagsModel(
      term: json['term'] as String,
      AAT_URL: json['AAT_URL'] as String,
      Wikidata_URL: json['Wikidata_URL'] as String,
    );

Map<String, dynamic> _$TagsModelToJson(TagsModel instance) => <String, dynamic>{
      'term': instance.term,
      'AAT_URL': instance.AAT_URL,
      'Wikidata_URL': instance.Wikidata_URL,
    };
