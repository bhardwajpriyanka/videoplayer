import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

import '../provider/video_provider.dart';
class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);


  @override
  State<VideoScreen> createState() => _VideoScreenState();

}

class _VideoScreenState extends State<VideoScreen> {
  VideoProvider? videoProviderfalse;
  VideoProvider? videoProvidertrue;

  @override
  void initState() {
    super.initState();
    Provider.of<VideoProvider>(context,listen: false).initVideo();
  }
  Widget build(BuildContext context) {
    videoProviderfalse=Provider.of<VideoProvider>(context,listen: false);
    videoProvidertrue=Provider.of<VideoProvider>(context,listen: true);

    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text("Video Player"),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                child: Chewie(
                  controller:
                  videoProvidertrue!.chewieController!
                )
              )
            ],
          )
        )
    );
  }
}
