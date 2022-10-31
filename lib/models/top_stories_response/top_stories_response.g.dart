// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_stories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopStoriesResponse _$$_TopStoriesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_TopStoriesResponse(
      status: json['status'] as String?,
      copyright: json['copyright'] as String?,
      section: json['section'] as String?,
      last_updated: json['last_updated'] == null
          ? null
          : DateTime.parse(json['last_updated'] as String),
      num_results: json['num_results'] as int?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_TopStoriesResponseToJson(
        _$_TopStoriesResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'copyright': instance.copyright,
      'section': instance.section,
      'last_updated': instance.last_updated?.toIso8601String(),
      'num_results': instance.num_results,
      'results': instance.results.map((e) => e.toJson()).toList(),
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      section: json['section'] as String?,
      subsection: json['subsection'] as String?,
      title: json['title'] as String?,
      abstract: json['abstract'] as String?,
      url: json['url'] as String?,
      uri: json['uri'] as String?,
      byline: json['byline'] as String?,
      item_type: json['item_type'] as String?,
      updated_date: json['updated_date'] == null
          ? null
          : DateTime.parse(json['updated_date'] as String),
      created_date: json['created_date'] == null
          ? null
          : DateTime.parse(json['created_date'] as String),
      published_date: json['published_date'] == null
          ? null
          : DateTime.parse(json['published_date'] as String),
      material_type_facet: json['material_type_facet'] as String?,
      kicker: json['kicker'] as String?,
      des_facet: (json['des_facet'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList() ??
          const [],
      org_facet: (json['org_facet'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList() ??
          const [],
      per_facet: (json['per_facet'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList() ??
          const [],
      geo_facet: (json['geo_facet'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList() ??
          const [],
      multimedia: (json['multimedia'] as List<dynamic>?)
              ?.map((e) => Multimedia.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      short_url: json['short_url'] as String?,
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'section': instance.section,
      'subsection': instance.subsection,
      'title': instance.title,
      'abstract': instance.abstract,
      'url': instance.url,
      'uri': instance.uri,
      'byline': instance.byline,
      'item_type': instance.item_type,
      'updated_date': instance.updated_date?.toIso8601String(),
      'created_date': instance.created_date?.toIso8601String(),
      'published_date': instance.published_date?.toIso8601String(),
      'material_type_facet': instance.material_type_facet,
      'kicker': instance.kicker,
      'des_facet': instance.des_facet,
      'org_facet': instance.org_facet,
      'per_facet': instance.per_facet,
      'geo_facet': instance.geo_facet,
      'multimedia': instance.multimedia.map((e) => e.toJson()).toList(),
      'short_url': instance.short_url,
    };

_$_Multimedia _$$_MultimediaFromJson(Map<String, dynamic> json) =>
    _$_Multimedia(
      url: json['url'] as String?,
      format: json['format'] as String?,
      height: json['height'] as int?,
      width: json['width'] as int?,
      type: json['type'] as String?,
      subtype: json['subtype'] as String?,
      caption: json['caption'] as String?,
      copyright: json['copyright'] as String?,
    );

Map<String, dynamic> _$$_MultimediaToJson(_$_Multimedia instance) =>
    <String, dynamic>{
      'url': instance.url,
      'format': instance.format,
      'height': instance.height,
      'width': instance.width,
      'type': instance.type,
      'subtype': instance.subtype,
      'caption': instance.caption,
      'copyright': instance.copyright,
    };
