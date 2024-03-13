import "package:json_annotation/json_annotation.dart";

import "element_measurments_model.dart";

part "measurments_model.g.dart";

@JsonSerializable()
class MeasurmentsModel {
  final String? elementName;
  final String? elementDescription;
  final ElementMeasurments? elementMeasurments;

  MeasurmentsModel(
      {required this.elementName,
      required this.elementDescription,
      required this.elementMeasurments});

  factory MeasurmentsModel.fromJson(Map<String, dynamic> json) =>
      _$MeasurmentsModelFromJson(json);
  Map<String, dynamic> toJson() => _$MeasurmentsModelToJson(this);
}
