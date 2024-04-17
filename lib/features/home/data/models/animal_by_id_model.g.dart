// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_by_id_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimalByIdModel _$AnimalByIdModelFromJson(Map<String, dynamic> json) =>
    AnimalByIdModel(
      taxonid: json['taxonid'] as int?,
      scientificName: json['scientificName'] as String?,
      kingdom: json['kingdom'] as String?,
      phylum: json['phylum'] as String?,
      clas: json['class'] as String?,
      order: json['order'] as String?,
      family: json['family'] as String?,
      genus: json['genus'] as String?,
      mainCommonName: json['mainCommonName'] as String?,
      authority: json['authority'] as String?,
      publishedYear: json['publishedYear'] as int?,
      assessmentDate: json['assessmentDate'] as String?,
      category: json['category'] as String?,
      criteria: json['criteria'] as String?,
      populationTrend: json['populationTrend'] as String?,
      marineSystem: json['marineSystem'] as bool?,
      freshwaterSystem: json['freshwaterSystem'] as bool?,
      terrestrialSystem: json['terrestrialSystem'] as bool?,
      assessor: json['assessor'] as String?,
      reviewer: json['reviewer'] as String?,
      elevationUpper: json['elevationUpper'] as int?,
      elevationLower: json['elevationLower'] as int?,
      amendedFlag: json['amendedFlag'] as bool?,
      amendedReason: json['amendedReason'] as String?,
    );

Map<String, dynamic> _$AnimalByIdModelToJson(AnimalByIdModel instance) =>
    <String, dynamic>{
      'taxonid': instance.taxonid,
      'scientificName': instance.scientificName,
      'kingdom': instance.kingdom,
      'phylum': instance.phylum,
      'class': instance.clas,
      'order': instance.order,
      'family': instance.family,
      'genus': instance.genus,
      'mainCommonName': instance.mainCommonName,
      'authority': instance.authority,
      'publishedYear': instance.publishedYear,
      'assessmentDate': instance.assessmentDate,
      'category': instance.category,
      'criteria': instance.criteria,
      'populationTrend': instance.populationTrend,
      'marineSystem': instance.marineSystem,
      'freshwaterSystem': instance.freshwaterSystem,
      'terrestrialSystem': instance.terrestrialSystem,
      'assessor': instance.assessor,
      'reviewer': instance.reviewer,
      'elevationUpper': instance.elevationUpper,
      'elevationLower': instance.elevationLower,
      'amendedFlag': instance.amendedFlag,
      'amendedReason': instance.amendedReason,
    };
