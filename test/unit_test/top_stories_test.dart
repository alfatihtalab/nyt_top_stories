import 'package:dio/dio.dart';
import 'package:nyt_top_stories/data/data_provider/rest_client_data_provider/rest_client_data_provider.dart';
import 'package:nyt_top_stories/data/repository/top_stories_repository.dart';
import 'package:nyt_top_stories/models/top_stories_response/top_stories_response.dart';
import 'package:test/test.dart';

void main() {
  group("Testing network request", () {
    final dio = Dio(); // Provide a dio instance

    // TODO Get request Top Stories from api
    test('Response code should 200', ()async {
      // final dio = Dio(); // Provide a dio instance

      final client = RestClientDataProvider(dio);
      final dioResponse = await client.getTopStoriesBySection("world");
      final topStoriesData = TopStoriesResponse.fromJson(dioResponse.response.data);
      print(topStoriesData);
      expect(dioResponse.response.statusCode, equals(200));
    });

    // TODO Get request Top Stories from api
    test('Response code should be 404 on wrong section', ()async {
      // final dio = Dio(); // Provide a dio instance

      final client = RestClientDataProvider(dio);
      try{
        final dioResponse = await client.getTopStoriesBySection("wrongSection");
        expect(dioResponse.response.statusCode, equals(200));

      }on DioError catch(e){
        if (e.response != null) {
          print(e.response!.statusCode);
          expect(e.response!.statusCode, 404);
        }

      }

    });



  });

  group("Testing TOP STORY repository", () {
    test("Repository should get the data of world section", ()async {
      final topStoriesRepo = TopStoriesRepository();
      final topStoriesObject = await topStoriesRepo.getTopStoriesData(sectionName: "world");
      expect(topStoriesObject.status, "OK");

    });

    test("Repository should not get the data of wrong section", ()async {
      try{
        final topStoriesRepo = TopStoriesRepository();
        final topStoriesObject = await topStoriesRepo.getTopStoriesData(sectionName: "FakeWronge");
        expect(topStoriesObject.status, "OK");

      }on DioError catch(e) {
        if (e.response != null) {
          print(e.response!.statusCode);
          expect(e.response!.statusCode, 404);
        }
      }


    });
  });



}