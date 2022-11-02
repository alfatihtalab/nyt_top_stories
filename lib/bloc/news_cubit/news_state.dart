part of 'news_cubit.dart';

@immutable
abstract class NewsState {
  const NewsState();
}

class NewsInitial extends NewsState {}

class NewsLoading extends NewsState {}
class NewsLoaded extends NewsState {
  final TopStoriesResponse topStoriesResponse;

  const NewsLoaded(this.topStoriesResponse);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NewsLoaded &&
        other.topStoriesResponse == topStoriesResponse;
  }
}

class ErrorFetchNews extends NewsState {}
