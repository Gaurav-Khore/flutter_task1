import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

myvideo() {
  final videoPlayerController =
      VideoPlayerController.asset("assets/videos/video4.mp4");
  final chewieController = ChewieController(
    videoPlayerController: videoPlayerController,
    aspectRatio: 3 / 3,
    autoPlay: true,
    looping: false,
  );

  final playerWidget = Chewie(
    controller: chewieController,
  );
  return Column(
    children: <Widget>[
      Container(
        child: playerWidget,
      ),
    ],
  );
}

myvideosecond() {
  final videoPlayerController = VideoPlayerController.network(
      "https://github.com/Gaurav-Khore/flutter_task1/raw/master/sample-mp4-file.mp4");
  final chewieController = ChewieController(
    videoPlayerController: videoPlayerController,
    aspectRatio: 3 / 3,
    autoPlay: true,
    looping: false,
  );

  final playerWidget = Chewie(
    controller: chewieController,
  );
  return Column(
    children: <Widget>[
      Container(
        child: playerWidget,
      ),
    ],
  );
}
