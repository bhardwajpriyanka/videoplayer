import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class VideoProvider extends ChangeNotifier
{
   VideoPlayerController? videoPlyerController;
   ChewieController? chewieController;

   void initVideo(){
     videoPlyerController=VideoPlayerController.asset("assets/video/video.mp4");
     videoPlyerController!.initialize();

     chewieController=ChewieController(
         videoPlayerController: videoPlyerController!,autoPlay: false,looping: false);
   }

}