import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../models/story_detail/story_detail.dart';

// Grided
class NewsGridedCardWidget extends StatelessWidget {
  const NewsGridedCardWidget(
      {Key? key, required this.onTap, required this.storyDetail})
      : super(key: key);

  final VoidCallback onTap;
  final StoryDetail storyDetail;

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    // final cashedImage = CachedNetworkImageProvider(
    //   imageUrl: "http://via.placeholder.com/350x150",
    //   progressIndicatorBuilder: (context, url, downloadProgress) =>
    //       CircularProgressIndicator(value: downloadProgress.progress),
    //   errorWidget: (context, url, error) => Icon(Icons.error),
    // );

    print(isPortrait);
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Container(
            // height: 300,
            padding: const EdgeInsets.all(4.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 2,
                    child: Container(
                      // height: 200,
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
                  const SizedBox(
                    height: 5,
                  ),
                  const Divider(),
                  Flexible(
                    // flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          // height: 70,
                          child: Text(
                            "${storyDetail.title}",
                            style: Theme.of(context)
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
                          // height: 22,
                          child: Text(
                            "${storyDetail.description}",
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      overflow: TextOverflow.ellipsis,
                                    ),
                            softWrap: false,
                            maxLines: isPortrait ? 1 : 3,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ])),
      ),
    );
  }
}
