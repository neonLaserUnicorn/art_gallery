// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constituents_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConstituentsModel _$ConstituentsModelFromJson(Map<String, dynamic> json) =>
    ConstituentsModel(
      constituentID: json['constituentID'] as int,
      role: json['role'] as String,
      name: json['name'] as String,
      constituentULAN_URL: json['constituentULAN_URL'] as String,
      constituentWikidata_URL: json['constituentWikidata_URL'] as String,
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$ConstituentsModelToJson(ConstituentsModel instance) =>
    <String, dynamic>{
      'constituentID': instance.constituentID,
      'role': instance.role,
      'name': instance.name,
      'constituentULAN_URL': instance.constituentULAN_URL,
      'constituentWikidata_URL': instance.constituentWikidata_URL,
      'gender': instance.gender,
    };
