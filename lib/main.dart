import 'package:flutter/material.dart';
import 'package:nyt_top_stories/data/repository/top_stories_repository.dart';

import 'app.dart';

void main() {
  runApp(
      AppProvider(topStoriesRepository: TopStoriesRepository(),));
}
