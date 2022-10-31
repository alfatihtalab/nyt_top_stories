// To parse this JSON data, do
//
//     final topStoriesResponse = topStoriesResponseFromJson(jsonString?);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'top_stories_response.freezed.dart';
part 'top_stories_response.g.dart';

TopStoriesResponse topStoriesResponseFromJson(String str) => TopStoriesResponse.fromJson(json.decode(str));

String? topStoriesResponseToJson(TopStoriesResponse data) => json.encode(data.toJson());

@freezed
class TopStoriesResponse with _$TopStoriesResponse {
  @JsonSerializable(explicitToJson: true)
  const factory TopStoriesResponse({
    required String? status,
    required String? copyright,
    required String? section,
    required DateTime? last_updated,
    required int? num_results,
    @Default([]) List<Result> results,
  }) = _TopStoriesResponse;

  factory TopStoriesResponse.fromJson(Map<String, dynamic> json) => _$TopStoriesResponseFromJson(json);
}

@freezed
class Result with _$Result {
  @JsonSerializable(explicitToJson: true)
  const factory Result({
    required String? section,
    required String? subsection,
    required String? title,
    required String? abstract,
    required String? url,
    required String? uri,
    required String? byline,
    required String? item_type,
    required DateTime? updated_date,
    required DateTime? created_date,
    required DateTime? published_date,
    required String? material_type_facet,
    required String? kicker,
    @Default([]) List<String?> des_facet,
    @Default([]) List<String?> org_facet,
    @Default([]) List<String?> per_facet,
    @Default([]) List<String?> geo_facet,
    @Default([]) List<Multimedia> multimedia,
    required String? short_url,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Multimedia with _$Multimedia {
  // @JsonSerializable(explicitToJson: true)
  const factory Multimedia({
    required String? url,
    required String? format,
    required int? height,
    required int? width,
    required String? type,
    required String? subtype,
    required String? caption,
    required String? copyright,
  }) = _Multimedia;

  factory Multimedia.fromJson(Map<String, dynamic> json) => _$MultimediaFromJson(json);
}



