import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nyt_top_stories/bloc/news_cubit/news_cubit.dart';
import 'package:nyt_top_stories/bloc/news_cubit/news_cubit.dart';
import 'package:nyt_top_stories/ui/news_list_page.dart';

import '../data/data_provider/internet_data_provider/internet_data_provider.dart';
import '../ui/error_connection_page.dart';
import '../utilities/constant.dart';

class AppPagesController extends StatefulWidget {
  const AppPagesController({Key? key}) : super(key: key);

  @override
  State<AppPagesController> createState() => _AppPagesControllerState();
}

class _AppPagesControllerState extends State<AppPagesController> {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: context
            .read<NewsCubit>()
            .getNewsDataFromApi(sectionName: sectionNames.first),
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!) {
              return const NewsListPage();
            }else{
              return const ErrorConnectionPage();
            }
          }
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );

        });
  }
}
