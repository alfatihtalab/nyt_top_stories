import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nyt_top_stories/bloc/news_cubit/news_cubit.dart';
import 'package:nyt_top_stories/data/repository/top_stories_repository.dart';
import 'package:nyt_top_stories/ui/error_connection_page.dart';
import 'package:nyt_top_stories/ui/news_list_page.dart';

import 'nyt/app_pages_controller.dart';

class AppProvider extends StatelessWidget {
  AppProvider({Key? key, required this.topStoriesRepository}) : super(key: key);
  final TopStoriesRepository topStoriesRepository;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<NewsCubit>(
        create: (_) => NewsCubit(topStoriesRepository),
      ),
    ],

        child: MaterialApp.router(
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      title: 'GoRouter Example',
    ));
  }

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const AppPagesController();
        },
      ),
      GoRoute(
        path: '/errorPage',
        builder: (BuildContext context, GoRouterState state) {
          return ErrorConnectionPage();
        },
      ),
    ],
  );

}