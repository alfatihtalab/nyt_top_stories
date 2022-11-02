import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nyt_top_stories/ui/web_view_page.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../models/story_detail/story_detail.dart';

class StoryDetailPage extends StatefulWidget {
  const StoryDetailPage({Key? key, required this.storyDetail,}) : super(key: key);
  final StoryDetail storyDetail;

  @override
  State<StoryDetailPage> createState() => _StoryDetailPageState();
}

class _StoryDetailPageState extends State<StoryDetailPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NYT Story Detail"),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              child: Container(
                height: 300,
                decoration:  BoxDecoration(
                    image: widget.storyDetail.imageUrl != "no media"? DecorationImage(
                        fit: BoxFit.cover,
                        image:
                        CachedNetworkImageProvider("${widget.storyDetail.imageUrl}",errorListener: () => new Icon(Icons.error),)
                    ): const DecorationImage(
                        fit: BoxFit.cover,
                        image:
                        AssetImage("images/placeholder.png")
                    ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
              ),
            ),
            const Divider(),
            Flexible(
              flex: 2,
              child: ListView(
                children: [
                   Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      widget.storyDetail.title ?? "No title founded",
                      style: const TextStyle(fontSize: 24),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(widget.storyDetail.description!),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(widget.storyDetail.author!, style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),),

                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(onPressed: (){
                          Navigator.of(context)
                              .push(MaterialPageRoute(
                              builder: (context)=> WebViewPage(url: widget.storyDetail.webViewUrl!,)));
                        }, child: const Text("... See more"),),
                      ),
                    ],
                  ),


                ],
              ),
            ),
            // SizedBox(height: 10,),


        ],
        ),
      ),
    );
  }

  @override
  void initState() {
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
    super.initState();
  }
}
