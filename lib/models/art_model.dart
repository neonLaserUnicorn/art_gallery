// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
import 'package:movie_db/models/constituents_model.dart';
import 'package:movie_db/models/measurments_model.dart';

import 'tags_model.dart';

part 'art_model.g.dart';

@JsonSerializable()
class ArtModel {
  final int? objectID;
  final bool? isHighlight;
  final String? accessionNumber;
  final String? accessionYear;
  final bool? isPublicDomain;
  final String? primaryImage;
  final String? primaryImageSmall;
  final List<String?> additionalImages;
  final List<ConstituentsModel>? constituents;
  final String? department;
  final String? objectName;
  final String? title;
  final String? culture;
  final String? period;
  final String? dynasty;
  final String? reign;
  final String? portfolio;
  final String? artistRole;
  final String? artistPrefix;
  final String? artistDisplayName;
  final String? artistDisplayBio;
  final String? artistSuffix;
  final String? artistAlphaSort;
  final String? artistNationality;
  final String? artistBeginDate;
  final String? artistEndDate;
  final String? artistGender;
  final String? artistWikidata_URL;
  final String? artisULAN_URL;
  final String? objectDate;
  final int? obljectBeginDate;
  final int? ObjectEndDate;
  final String? medium;
  final String? dimensions;
  final double? dimensionsParsed;
  final List<MeasurmentsModel>? measurments;
  final String? creditLine;
  final String? geographyType;
  final String? city;
  final String? state;
  final String? county;
  final String? country;
  final String? region;
  final String? subregion;
  final String? locale;
  final String? locus;
  final String? excavation;
  final String? river;
  final String? classification;
  final String? rightsAndReproduction;
  final String? linkResource;
  final DateTime? metadataDate;
  final String? repository;
  final String? ObjectURL;
  final List<TagsModel>? tags;
  final String? objectWikidata_URL;
  final bool? isTimelimeWork;
  final String? GalleryNumber;

  factory ArtModel.fromJson(Map<String, dynamic> json) =>
      _$ArtModelFromJson(json);

  ArtModel(
      {required this.objectID,
      required this.isHighlight,
      required this.accessionNumber,
      required this.accessionYear,
      required this.isPublicDomain,
      required this.primaryImage,
      required this.primaryImageSmall,
      required this.additionalImages,
      required this.constituents,
      required this.department,
      required this.objectName,
      required this.title,
      required this.culture,
      required this.period,
      required this.dynasty,
      required this.reign,
      required this.portfolio,
      required this.artistRole,
      required this.artistPrefix,
      required this.artistDisplayName,
      required this.artistDisplayBio,
      required this.artistSuffix,
      required this.artistAlphaSort,
      required this.artistNationality,
      required this.artistBeginDate,
      required this.artistEndDate,
      required this.artistGender,
      required this.artistWikidata_URL,
      required this.artisULAN_URL,
      required this.objectDate,
      required this.obljectBeginDate,
      required this.ObjectEndDate,
      required this.medium,
      required this.dimensions,
      required this.dimensionsParsed,
      required this.measurments,
      required this.creditLine,
      required this.geographyType,
      required this.city,
      required this.state,
      required this.county,
      required this.country,
      required this.region,
      required this.subregion,
      required this.locale,
      required this.locus,
      required this.excavation,
      required this.river,
      required this.classification,
      required this.rightsAndReproduction,
      required this.linkResource,
      required this.metadataDate,
      required this.repository,
      required this.ObjectURL,
      required this.tags,
      required this.objectWikidata_URL,
      required this.isTimelimeWork,
      required this.GalleryNumber});
  Map<String, dynamic> toJson() => _$ArtModelToJson(this);
}
