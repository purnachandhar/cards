import 'dart:io';
import 'dart:typed_data';

import 'package:card_poc/views/videos/gif_view.dart';
import 'package:card_poc/views/videos/video_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screen_recorder/screen_recorder.dart';
import 'package:http/http.dart' as http;

class TempletRecodingController extends GetxController {
  static TempletRecodingController instance = Get.find();

  ScreenRecorderController controller = ScreenRecorderController(
      pixelRatio: 1.8);

  final FlutterFFmpeg _flutterFFmpeg = FlutterFFmpeg();

  RxString progressingText = "Creating Video Please Wait 15 Mins to creat video".obs;

  @override
  void onReady() {
    super.onReady();
    controller.start();
    print("Recoding is Started");
    stopRecording();
    progressingText = "Started the video" as RxString;
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

  }

  void stopRecording() async {
    Future.delayed(Duration(seconds: 29), () {
      controller.stop();
      print("Recoding is Stoped");
      Future.delayed(Duration(milliseconds: 60), () async {
        print("Gif is Creating");
        Get.defaultDialog(
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                Obx(() {
                  return Text("$progressingText");
                })
              ],
            )
        );
        var gif = await controller.export();
        try {
          Uint8List finalGif = Uint8List.fromList(gif!);
          final tempDir = await getTemporaryDirectory();

          final recordedGifFile = await new File('${tempDir.path}/test22Gif.gif')
              .create();
          recordedGifFile.writeAsBytesSync(finalGif);

          final String finalGifFile = "${recordedGifFile.path}";

          //Get.to(GifView(finalGif));

          GallerySaver.saveImage("${finalGifFile}").then((value) => print("Saved the video with quality"));

          final finalVideoOutPath = await new File(
              '${tempDir.path}/test4000233mp4.mp4').create();

          final compressedVideoPath = await new File(
              '${tempDir.path}/test4000233mp4.mp4').create();

          var audioUrl = Uri.parse(
              "https://firebasestorage.googleapis.com/v0/b/cards-31f5c.appspot.com/o/newwed.mp3?alt=media&token=02aae2c6-19e8-4ea5-833b-3210949e29c0");
          String dir = (await getApplicationDocumentsDirectory()).path;
          File newAudiofile = new File('${dir}/test1mp3.mp3');
          var request = await http.get(audioUrl);
          var bytes = await request.bodyBytes;
          await newAudiofile.writeAsBytes(bytes);
          final String finalAudiofile = "${newAudiofile.path}";

          String commandToExecute =
              '-f mp3 -i ${finalAudiofile} -f gif -i ${finalGifFile} -vf scale=3840:-1 -y ${finalVideoOutPath.path}';

          await _flutterFFmpeg.execute(commandToExecute).then((rc) async {
            print('FFmpeg process exited with rc: $rc');
            print(" : ${finalVideoOutPath.path}");

            GallerySaver.saveVideo("${finalVideoOutPath.path}").then((value) =>
                print("Saved the video with quality"));
          });
        } catch (e) {
          print(e);
        }
      });
    });
  }
}