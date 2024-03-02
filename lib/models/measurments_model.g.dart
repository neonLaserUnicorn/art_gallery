// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurments_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeasurmentsModel _$MeasurmentsModelFromJson(Map<String, dynamic> json) =>
    MeasurmentsModel(
      elementName: json['elementName'] as String,
      elementDescription: json['elementDescription'] as String,
      elementMeasurments: ElementMeasurments.fromJson(
          json['elementMeasurments'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MeasurmentsModelToJson(MeasurmentsModel instance) =>
    <String, dynamic>{
      'elementName': instance.elementName,
      'elementDescription': instance.elementDescription,
      'elementMeasurments': instance.elementMeasurments,
    };
