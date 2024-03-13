// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'element_measurments_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ElementMeasurments _$ElementMeasurmentsFromJson(Map<String, dynamic> json) =>
    ElementMeasurments(
      Height: (json['Height'] as num?)?.toDouble(),
      Length: (json['Length'] as num?)?.toDouble(),
      Width: (json['Width'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ElementMeasurmentsToJson(ElementMeasurments instance) =>
    <String, dynamic>{
      'Height': instance.Height,
      'Length': instance.Length,
      'Width': instance.Width,
    };
