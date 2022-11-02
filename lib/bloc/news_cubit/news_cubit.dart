import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nyt_top_stories/data/repository/top_stories_repository.dart';
import 'package:nyt_top_stories/models/story_detail/story_detail.dart';
import 'package:nyt_top_stories/models/top_stories_response/top_stories_response.dart';

import '../../data/data_provider/internet_data_provider/internet_data_provider.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit(this.topStoriesRepository) : super(NewsInitial());
  final TopStoriesRepository topStoriesRepository;
  late TopStoriesResponse topStoriesResponse;
  List<StoryDetail> storyDetailList = [];
  bool isListView = true;

// TODO get current Top Stories by section Name
  Future<bool> getNewsDataFromApi({required String sectionName}) async {
    InternetProvider internetProvider = InternetProvider();
    final hasInternet = await internetProvider.checkInternetConnection();
    bool isLoaded = false;


    if(hasInternet){
      emit(NewsLoading());
      storyDetailList.clear();
      await topStoriesRepository.getTopStoriesData(sectionName: sectionName)
          .then((value) {
        topStoriesResponse = value;
        emit(NewsLoaded(value));
        topStoriesResponse.results.forEach((element) {
          final multimedia =
              element.multimedia;

          final storyDetail = StoryDetail(
              title: element.title,
              description: element.abstract,
              author: element.byline,
              imageUrl: element.multimedia.isNotEmpty? element.multimedia.first.url: "no media",
              webViewUrl: element.url);
          storyDetailList.add(storyDetail);
        });
        isLoaded = true;
      }).onError((error, stackTrace) {
        emit(ErrorFetchNews());
      });
      return isLoaded;
    }else{
      emit(ErrorFetchNews());

      return false;
    }

  }

  void changeView(bool isList){
    isListView = isList;
  }



}
