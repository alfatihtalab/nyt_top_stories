// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:nyt_top_stories/main.dart';
import 'package:nyt_top_stories/ui/news_list_page.dart';

void main() {
 testWidgets('StoryDetailWidget has a title, description and author textWidgets', (tester) async {
    // Test code goes here.
    const storyDetail =
    StoryDetail(title: "title",
        description: "description",
        author: "author",
        imageUrl: "imageUrl",
        webViewUrl: "webUrl");

    Widget testWidget = const MediaQuery(
        data: MediaQueryData(),
        child: MaterialApp(home: StoryDetailPage(storyDetail: storyDetail))
    );

    await tester.pumpWidget(testWidget
    );

    final titleFinder = find.text("title");
    final descriptionFinder = find.text("description");
    final authorFinder = find.text("author");

    expect(titleFinder, findsOneWidget);
    expect(descriptionFinder, findsOneWidget);
    expect(authorFinder, findsOneWidget);

  });

  testWidgets('NewsListedCardWidget has a title, description and author textWidgets',
          (tester) async {
    // Test code goes here.
    const storyDetail =
    StoryDetail(title: "title",
        description: "description",
        author: "author",
        imageUrl: "imageUrl",
        webViewUrl: "webUrl");

    Widget testWidget = MediaQuery(
        data: const MediaQueryData(),
        child: MaterialApp(home: NewsListedCardWidget(storyDetail: storyDetail, onTap: () {  },))
    );

    await tester.pumpWidget(testWidget
    );

    final titleFinder = find.text(storyDetail.title!);
    final descriptionFinder = find.text("description");
    // final imageFinder = find.image(NetworkImage(storyDetail.imageUrl!));

    expect(titleFinder, findsOneWidget);
    expect(descriptionFinder, findsOneWidget);
    // expect(imageFinder, findsOneWidget);

  });
}
