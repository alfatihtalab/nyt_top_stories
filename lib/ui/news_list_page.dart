import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nyt_top_stories/bloc/news_cubit/news_cubit.dart';
import 'package:nyt_top_stories/models/story_detail/story_detail.dart';
import 'package:nyt_top_stories/ui/story_detail_view_page.dart';
import '../utilities/constant.dart';
import '../widgets/news_grided_card_widget.dart';
import '../widgets/news_listed_card_widget.dart';

class NewsListPage extends StatefulWidget {
  const NewsListPage({Key? key}) : super(key: key);

  @override
  State<NewsListPage> createState() => _NewsListPageState();
}

class _NewsListPageState extends State<NewsListPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late TextEditingController _searchController;
  late FocusNode focusNode;
  List<StoryDetail> foundNewsList = [];

  String dropdownValue = sectionNames.first;
  bool isSearchFocus = false;

  bool isListView = true;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _controller = AnimationController(vsync: this);
    focusNode = FocusNode();
  }

  @override
  void dispose() {
    _searchController.dispose();

    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final newsProvider = BlocProvider.of<NewsCubit>(context, listen: false);
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("News App"),
      // ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    width: 3,
                  ),
                  Flexible(
                    flex: 2,
                    child: TextField(
                      // obscureText: true,
                      onChanged: (enteredKeyword) => _runFilter(enteredKeyword, context, newsProvider),
                      onTap: () async {
                        setState(() {
                          isSearchFocus = true;
                        });
                      },

                      controller: _searchController,
                      focusNode: focusNode,
                      decoration: const InputDecoration(
                          // border: OutlineInputBorder(),
                          labelText: 'Search',
                          icon: Icon(Icons.search)),
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  isSearchFocus
                      ? IconButton(
                          onPressed: () async {
                            // await newsProvider.getNewsDataFromApi(sectionName: dropdownValue);


                            setState(() {
                              isSearchFocus = false;
                              _searchController.clear();
                              FocusScope.of(context).unfocus();
                            });
                          },
                          icon: const Icon(Icons.close))
                      : Row(
                          children: [
                            const Icon(
                              Icons.filter_list_alt,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            DropdownButton<String>(
                              itemHeight: 75,
                              value: dropdownValue,
                              // iconSize: 10,
                              isExpanded: false,
                              // icon: const Icon(Icons.arrow_downward),
                              elevation: 16,
                              // style: const TextStyle(color: Colors.deepPurple),
                              // underline: Container(
                              //   height: 2,
                              //   color: Colors.deepPurpleAccent,
                              // ),

                              onChanged: (String? value) async {
                                // This is called when the user selects an item.
                                await newsProvider.getNewsDataFromApi(
                                    sectionName: value!);
                                setState(() {
                                  dropdownValue = value;
                                });
                              },
                              items: sectionNames.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                );
                              }).toList(),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            IconButton(
                                onPressed: () async {
                                  await newsProvider.getNewsDataFromApi(
                                      sectionName: dropdownValue);
                                  if (!isListView) {
                                    setState(() {
                                      isListView = true;
                                    });
                                  }
                                },
                                icon: const Icon(
                                  Icons.list,
                                  // size: 20,
                                )),
                            IconButton(
                                onPressed: () async {
                                  if (isListView) {
                                    await newsProvider.getNewsDataFromApi(
                                        sectionName: dropdownValue);

                                    setState(() {
                                      isListView = false;
                                    });
                                  }
                                },
                                icon: const Icon(
                                  Icons.grid_view_sharp,
                                  // size: 20,
                                )),
                          ],
                        ),
                ],
              ),

              //  TODO depending on view GridView or ListView
              BlocConsumer<NewsCubit, NewsState>(
                listener: (context, state) {
                  // TODO: implement listener
                },
                builder: (context, state) {
                  if (state is NewsLoaded) {
                    return isListView
                        ? Expanded(
                            child: isSearchFocus? foundNewsList.isNotEmpty? ListView.builder(
                                itemCount: foundNewsList.length,
                                itemBuilder: (context, index) {
                                  return NewsListedCardWidget(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  StoryDetailPage(storyDetail: foundNewsList[index],
                                                    
                                                  )));
                                    },
                                    storyDetail:
                                    foundNewsList[index],
                                  );
                                }): Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: const Text(
                              'No results found',
                              style: TextStyle(fontSize: 22),
                            ),
                                ) :ListView.builder(
                                itemCount: newsProvider.storyDetailList.length,
                                itemBuilder: (context, index) {
                                  return NewsListedCardWidget(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  StoryDetailPage(storyDetail: newsProvider.storyDetailList[index],
                                                    
                                                  )));
                                    },
                                    storyDetail:
                                        newsProvider.storyDetailList[index],
                                  );
                                }))
                        : Expanded(
                            child:isSearchFocus?
                            foundNewsList.isNotEmpty?
                            GridView.builder(
                                itemCount: foundNewsList.length,
                                gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2),
                                itemBuilder: (context, index) {
                                  return NewsGridedCardWidget(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  StoryDetailPage(
                                                    storyDetail: foundNewsList[index],
                                                    
                                                  )));
                                    },
                                    storyDetail:
                                    foundNewsList[index],
                                  );
                                }) :
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: const Text(
                          'No results found',
                          style: TextStyle(fontSize: 22),
                        ),
                            ): GridView.builder(
                                itemCount: newsProvider.storyDetailList.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                itemBuilder: (context, index) {
                                  return NewsGridedCardWidget(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  StoryDetailPage(storyDetail: newsProvider.storyDetailList[index],
                                                    
                                                  )));
                                    },
                                    storyDetail:
                                        newsProvider.storyDetailList[index],
                                  );
                                }),
                          );
                  }if(state is ErrorFetchNews){
                    return Column(
                      children: [
                        const Center(child:Text("No Internet connection!")),
                        SizedBox(height: 10,),
                        TextButton(onPressed: ()async{
                          await newsProvider.getNewsDataFromApi(sectionName: sectionNames.first);

                        }, child: Text("Try again"))
                      ],
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),

              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword, BuildContext context, NewsCubit newsCubit) {
    List<StoryDetail> titleResults = [];
    List<StoryDetail> authorNameResults = [];

    List<StoryDetail> totalResults = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      totalResults = newsCubit.storyDetailList;
    } else {
      titleResults = newsCubit
          .storyDetailList
          .where((story) => story.title!.contains(enteredKeyword))
          .toList();

      authorNameResults = newsCubit
          .storyDetailList
          .where(
              (story) => story.author!.contains(enteredKeyword))
          .toList();

      totalResults.addAll(titleResults);
      totalResults.addAll(authorNameResults);
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      foundNewsList = totalResults;
    });
  }
}
