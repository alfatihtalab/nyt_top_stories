import 'dart:io';

import 'package:dio/dio.dart';
import 'package:nyt_top_stories/models/top_stories/top_stories.dart';

import '../../models/top_stories_response/top_stories_response.dart';
import '../data_provider/rest_client_data_provider/rest_client_data_provider.dart';

class TopStoriesRepository {
  final client = RestClientDataProvider(Dio());


  //Get all news from the api and convert it into dart object
  Future<TopStoriesResponse> getTopStoriesData({required String sectionName}) async {
    late TopStoriesResponse topStoriesResponse;

    await getResponseFromApi(sectionName: sectionName).then((response){
        topStoriesResponse = TopStoriesResponse.fromJson(response.data);
      });
    return topStoriesResponse;
  }

  //Get all news from the api
  Future<Response> getResponseFromApi({required String sectionName}) async {

      try {
        final dioResponse = await client.getTopStoriesBySection(sectionName);
        return dioResponse.response;
      } on DioError catch (e) {
        return e.response!;
      }

  }
}
