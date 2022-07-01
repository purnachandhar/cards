import 'dart:typed_data';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen_recorder/screen_recorder.dart';
import 'package:video_player/video_player.dart';

class VideoTempletOne extends StatefulWidget {
  const VideoTempletOne({Key? key}) : super(key: key);

  @override
  _VideoTempletOneState createState() => _VideoTempletOneState();
}

class _VideoTempletOneState extends State<VideoTempletOne> {
  late VideoPlayerController _videoPlayerController;
  ScreenRecorderController controller = ScreenRecorderController(
    skipFramesBetweenCaptures: 0
    );


  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        setState(() {});
        _videoPlayerController.play();
        _videoPlayerController.setLooping(true);
      });
    controller.start();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: ScreenRecorder(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  controller: controller,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // _videoPlayerController.value.isInitialized
                      //     ? VideoPlayer(_videoPlayerController)
                      //     : CircularProgressIndicator(),
                      Image.network(
                        "https://i.pinimg.com/736x/cc/f5/7f/ccf57f70756dd84d84f6db7d44330e63.jpg",
                        fit: BoxFit.fill,
                      ),
                      _videoPlayerController.value.isInitialized?
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        // color: Colors.deepPurpleAccent.withOpacity(0.4),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  DefaultTextStyle(
                                    style: GoogleFonts.greatVibes(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 85,
                                        color: Colors.amberAccent),
                                    child: AnimatedTextKit(
                                      animatedTexts: [
                                        TyperAnimatedText(
                                            'Invitation',speed: Duration(milliseconds: 1000)),
                                      ],
                                      totalRepeatCount: 1,
                                      // onFinished: () => NextText(),
                                      // onNext: (int , bool){
                                      //   print("mfhsdljfhsdljkfhaskdjhf");
                                      //   NextText();
                                      // },
                                      stopPauseOnTap: true,
                                    ),
                                  ),
                                  DefaultTextStyle(
                                    style: GoogleFonts.greatVibes(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 55,
                                        color: Colors.amberAccent),
                                    child: AnimatedTextKit(
                                      animatedTexts: [
                                        FadeAnimatedText('Save The date',duration: Duration(seconds: 10)),
                                      ],
                                      totalRepeatCount: 1,
                                      displayFullTextOnTap: true,
                                      onFinished: (){

                                      },
                                      stopPauseOnTap: true,
                                    ),
                                  ),
                                  // animatedTextWidget2,
                                  /*Text(
                                    "save the date",
                                    style: GoogleFonts.gothicA1(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 35,
                                        color: Colors.amberAccent,
                                        letterSpacing: 6),
                                  ),*/
                                  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            // "${saveTheDateController.userdata.read('brideName')}",
                                            "PurnaChandhar",
                                            style: GoogleFonts.greatVibes(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 35,
                                                color: Colors.amberAccent),
                                          ),
                                          Text(
                                            "&",
                                            style: GoogleFonts.greatVibes(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 35,
                                                color: Colors.amberAccent),
                                          ),
                                          Text(
                                            // "${saveTheDateController.userdata.read('groomName')}",
                                            "Puja",
                                            style: GoogleFonts.greatVibes(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 35,
                                                color: Colors.amberAccent),
                                          ),
                                        ],
                                      )),
                                  Text(
                                    "TOGETHER WITH THIRE LOVING FAMILES",
                                    style: GoogleFonts.gothicA1(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 20,
                                        color: Colors.amberAccent),
                                  ),
                                  Text(
                                    // "${saveTheDateController.userdata.read('date')}",
                                    "22/03/20223",
                                    style: GoogleFonts.gothicA1(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.amberAccent),
                                  ),
                                  Text(
                                    // "${saveTheDateController.userdata.read('place')}",
                                    "Hyderabad",
                                    style: GoogleFonts.gothicA1(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.amberAccent),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ):Container(),

                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // RaisedButton(
                  //   onPressed: () async {
                  //
                  //   },
                  //   child: Text("Stop"),
                  // ),
                  RaisedButton(
                    onPressed: () async {
                      controller.stop();
                      var gif = await controller.export();
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Image.memory(Uint8List.fromList(gif!)),
                          );
                        },
                      );
                    },
                    child: Text("Preview"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget NextText(){
    print("///////////////////////////////////////////////////////////////////");
    return DefaultTextStyle(
      style: GoogleFonts.greatVibes(
          fontWeight: FontWeight.w400,
          fontSize: 15,
          color: Colors.amberAccent),
      child: AnimatedTextKit(
        animatedTexts: [
          RotateAnimatedText('Save The date',duration: Duration(seconds: 3)),
        ],
        totalRepeatCount: 1,
        displayFullTextOnTap: true,
        onFinished: (){
        },
        stopPauseOnTap: true,
      ),
    );
  }
}

