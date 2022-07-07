import 'dart:io';
import 'dart:typed_data';

import 'package:fl_video/fl_video.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPreview extends StatefulWidget {
  File finalVideoOutPath;
  VideoPreview(this.finalVideoOutPath);


  @override
  _VideoPreviewState createState() => _VideoPreviewState();
}

class _VideoPreviewState extends State<VideoPreview> {

  late final VideoPlayerController _videoPlayerController = VideoPlayerController.file(widget.finalVideoOutPath);

  FlVideoPlayerController? _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializePlayer(_videoPlayerController);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _videoPlayerController.dispose();
  }

  void initializePlayer(VideoPlayerController videoPlayerController) {
    _controller = FlVideoPlayerController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: false,
      placeholder: const Center(child: CircularProgressIndicator()),
      controls: MaterialControls(
          hideDuration: const Duration(minutes: 30),
          enablePlay: true,
          enableFullscreen: true,
          enableSpeed: false,
          enableVolume: true,
          enableSubtitle: false,
          enablePosition: true,
          onTap: (FlVideoTapEvent event, FlVideoPlayerController controller) {
            debugPrint(event.toString());
          },
          onDragProgress: (FlVideoDragProgressEvent event, Duration duration) {
            debugPrint('$event===$duration');
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
          color: Colors.orange,
            child: Center(child: FlVideoPlayer(controller: _controller!))),
    );
  }
}
