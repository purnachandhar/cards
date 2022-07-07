import 'package:card_poc/constains/controllers.dart';
import 'package:card_poc/views/save_the_date_templets/form/save_the_date_form.dart';
import 'package:card_poc/views/videos/record_templet.dart';
import 'package:fl_video/fl_video.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideoView extends StatefulWidget {
  String videoTemplet;
  String price;
  String templetId;
  String categories;
  Widget STDVideoWiggets;

  VideoView(this.videoTemplet, this.price,this.templetId,this.categories,this.STDVideoWiggets );

  @override
  State<VideoView> createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  late final VideoPlayerController _videoPlayerController =
      VideoPlayerController.network('${widget.videoTemplet}');

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
    _controller!.dispose();
    print("Video view is Disposed");
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
          margin: EdgeInsets.only(bottom: 80),
            child: Center(child: FlVideoPlayer(controller: _controller!))),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 25,),
            InkWell(
              onTap: () {
                Get.to(SaveTheDateForm());
              },
              child: Container(
                width: orientation.width / 3,
                height: orientation.height / 14,
                color: Colors.brown,
                child: Center(
                  child: Text("Edit",
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                if (saveTheDateController.userdata.read('brideName') == null) {
                  Get.to(SaveTheDateForm());
                } else {
                }
                // Get.to(RecordVideoTemplet(widget.STDVideoWiggets));
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => RecordVideoTemplet(widget.STDVideoWiggets)),
                        (Route<dynamic> route) => false);
              },
              child: Container(
                width: orientation.width / 2,
                height: orientation.height / 14,
                color: Colors.brown,
                child: Center(
                  child: Text(
                    saveTheDateController.userdata.read('brideName') == null
                        ? "Use Templet"
                        : "Pay ${widget.price} & Download",
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
