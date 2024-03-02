import 'package:json_annotation/json_annotation.dart';

part 'element_measurments_model.g.dart';

@JsonSerializable()
class ElementMeasurments {
  final double Height;
  final double Length;
  final double Width;

  ElementMeasurments(
      {required this.Height, required this.Length, required this.Width});

  factory ElementMeasurments.fromJson(Map<String, dynamic> json) =>
      _$ElementMeasurmentsFromJson(json);
  Map<String, dynamic> toJson() => _$ElementMeasurmentsToJson(this);
}
