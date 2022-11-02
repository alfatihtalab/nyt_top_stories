import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../../utilities/constant.dart';
part 'rest_client_data_provider.g.dart';

//
// Functional Requirements
// 1. Search by news title or Author name.
// 2. Filtering by section only.

// Technical Requirements
// Having at least a single requirement not implemented leads to failing the assessment.
// 1. Implement Dart/Flutter app
// 2. Implement preloader for search and filtering
// 3. The app must work in portrait and landscape mode
// 4. Use Dependency injection library
// 5. Use network request library (Retrofit is preferable)
// 6. The app is covered by tests
// 7. Meaningful readme.md in the repository root

@RestApi(baseUrl: "https://api.nytimes.com/svc/topstories/v2/")
abstract class RestClientDataProvider {
  factory RestClientDataProvider(Dio dio, {String baseUrl}) = _RestClientDataProvider;

  @GET("/{sectionName}.json?api-key=$apiKey")
  Future<HttpResponse> getTopStoriesBySection(@Path("sectionName") String sectionName);


  // @GET("/{sectionName}.json?api-key=FGnRdtmYo3PFRISFszukPlrJt6F2qEzt")
  // Future<HttpResponse> getTopStoriesModelBySection(@Path("sectionName") String sectionName);
}
//
// class TopStoriesDataProvider {
//   Future<Response> readData() async {
//     // Read from make network request etc...
//   }
//
//   //TODO get top stories from API by section name
//
//
//   //
// }
