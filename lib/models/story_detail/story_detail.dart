

// To parse this JSON data, do
//
//     final storyDetail = storyDetailFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'story_detail.freezed.dart';
part 'story_detail.g.dart';

StoryDetail storyDetailFromJson(String str) => StoryDetail.fromJson(json.decode(str));

String storyDetailToJson(StoryDetail data) => json.encode(data.toJson());

@freezed
class StoryDetail with _$StoryDetail {
  const factory StoryDetail({
    required String? title,
    required String? description,
    required String? author,
    required String? imageUrl,
    required String? webViewUrl,
  }) = _StoryDetail;

  factory StoryDetail.fromJson(Map<String, dynamic> json) => _$StoryDetailFromJson(json);
}
