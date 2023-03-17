import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplayer/screen/home/provider/video_provider.dart';
import 'package:videoplayer/screen/home/view/video_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => VideoProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) =>VideoScreen(),
        },
      ),
    ),
  );
}