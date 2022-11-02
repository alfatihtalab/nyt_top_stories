import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nyt_top_stories/models/story_detail/story_detail.dart';

class NewsListedCardWidget extends StatelessWidget {
  const NewsListedCardWidget(
      {Key? key, required this.onTap, required this.storyDetail})
      : super(key: key);

  final VoidCallback onTap;
  final StoryDetail storyDetail;

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery
        .of(context)
        .orientation == Orientation.portrait;


    return Card(

        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 100,
            padding: EdgeInsets.all(4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
            Flexible(
            child: Container(
            width: 90,
              decoration: BoxDecoration(
                  image: storyDetail.imageUrl != "no media"? DecorationImage(
                      fit: BoxFit.cover,
                      image:
                      CachedNetworkImageProvider("${storyDetail.imageUrl}",errorListener: () => new Icon(Icons.error),)
              ): const DecorationImage(
                      fit: BoxFit.cover,
                      image:
                      AssetImage("images/placeholder.png")
              ),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),

        ),

        const SizedBox(width: 10,),
        const VerticalDivider(),
        Flexible(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                width: 200,
                child: Text(
                  "${storyDetail.title}",
                  style: Theme
                      .of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(overflow: TextOverflow.ellipsis),
                  softWrap: false,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 200,
                child: Text("${storyDetail.description}",
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(overflow: TextOverflow.ellipsis, fontSize: 12),
                  softWrap: false, maxLines: isPortrait ? 2 : 3,),
              ),
              const SizedBox(
                height: 5,
              ),

            ],
          ),
        ),
        ])),
    )
    ,
    );
  }
}
