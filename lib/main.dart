import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:card_poc/constains/controllers.dart';
import 'package:card_poc/constains/firebase.dart';
import 'package:card_poc/controllers/app_controller.dart';
import 'package:card_poc/controllers/home_controller.dart';
import 'package:card_poc/controllers/payment_controller.dart';
import 'package:card_poc/controllers/save_the_date_controller.dart';
import 'package:card_poc/controllers/user_details_controller.dart';
import 'package:card_poc/views/splash/splash_screen.dart';
import 'package:card_poc/views/video_templets/video_templet_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:screen_recorder/screen_recorder.dart';
import 'package:video_player/video_player.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  await initialization;
  await GetStorage.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(AppController());
    Get.put(UserDetailsController());
    Get.put(SaveTheDateController());
    Get.put(HomeController());
    Get.put(PaymentController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      // home: VideoTempletOne(),
    );
  }
}


//this is the sample poc fro screen recoding
/*
class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int _counter = 0;
  ScreenRecorderController controller =
  ScreenRecorderController(pixelRatio: 2.0);

  // GifController? gifController;
  String _result = "";

  String? imageData;
  // bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // gifController = GifController(vsync: this);
    imageData =
    "https://firebasestorage.googleapis.com/v0/b/meara-cbf57.appspot.com/o/wedding%20files%2Ftemp2%2Fezgif.com-gif-maker.gif?alt=media&token=d256cf8a-78b9-4b13-86b7-f785cb4752d2";

    controller.start();
    print("Recoding is Started");
    stopRecording();
    // gifController!.repeat(min:0,max:100,period:Duration(seconds:6));
  }

  void stopRecording() {
    // isLoading = true;
    Future.delayed(Duration(seconds: 29), () {
      controller.stop();
      print("Recoding is Stoped");
      Future.delayed(Duration(milliseconds: 60), () async {
        print("Gif is Creating");
        var gif = await controller.export();
        Uint8List finalGif = Uint8List.fromList(gif!);
        // var appDocDir = await getTemporaryDirectory();
        // String savePath = appDocDir.path + "/temp.gif";

        // var success = await ImageSave.saveImage(finalGif, "demo.gif", albumName: "demo");

        bool success = false;
        try {
           success = (await ImageSave.saveImage(finalGif, "demo4.gif", albumName: "demo"))!;
          String gifname = (await ImageSave.saveImage(finalGif, "demo.gif", albumName: "demo"))!.toString();
          print("Gif Name $gifname");
          final tempDir = await getTemporaryDirectory();
          final file = await new File('${tempDir.path}/test1Gif.gif').create();

          String audio = "/assets/test.mp3";
          String OUTPUT_PATH = '/storage/emulated/0/Download/output.mp4';
          String commandToExecute = 'ffmpeg -f ${file.path} -i infile.gif $OUTPUT_PATH';
          final FlutterFFmpeg _flutterFFmpeg = FlutterFFmpeg();

          await _flutterFFmpeg.execute(commandToExecute).then((rc) {
            print('FFmpeg process exited with rc: $rc');
          });
          //save the gif in gallery
          file.writeAsBytesSync(finalGif);
          print("File name is : ${file.path}");
          GallerySaver.saveImage(file.path).then((value) => print("Gif file is in gallary path:${file.path}"));
          final FlutterFFmpeg _flutterFFmpeg = FlutterFFmpeg();
          final String inputFile = "${file.path}";
          // final String inputFile = "https://c.tenor.com/GwFP_tY-jmQAAAAC/hug-hugs-and-love.gif";
          final outputFilePath =
          await new File('${tempDir.path}/test3733mp4.mp4').create();
          // final String outputFile = "${outputFilePath}";
          // final String outputFile =
          //     "/storage/emulated/0/Download/outputtest18.mp4";
          // final String audiofile = "assets/audio/text_two.mp3";
          var audioUrl = Uri.parse(
              "https://firebasestorage.googleapis.com/v0/b/meara-cbf57.appspot.com/o/wedding%20files%2Ftemp2%2Fnewwed.mp3?alt=media&token=c2ad1f74-7e50-401a-8b22-ab687c47dc49");
          String dir = (await getApplicationDocumentsDirectory()).path;
          File newAudiofile = new File('${dir}/test1mp3.mp3');
          var request = await http.get(audioUrl);
          var bytes = await request.bodyBytes; //close();
          await newAudiofile.writeAsBytes(bytes);
          final String audiofile = "${newAudiofile.path}";
          print("Audio file from internet ${newAudiofile.path}");
          // String audioasset = "assets/audio/text_two.mp3";
          // ByteData bytes = await rootBundle.load(audioasset); //load sound from assets
          // Uint8List  soundbytes = bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
          // final aFile = await new File('${tempDir.path}/testmp3.mp3').create();
          // aFile.writeAsBytesSync(soundbytes);
          // final String audiofile = "${aFile.path}";
          // print("audioFile path is : ${aFile.path}");
          // final String audiofile = "/storage/emulated/0/Download/text.mp3";
          // final String audiofile = "https://firebasestorage.googleapis.com/v0/b/meara-cbf57.appspot.com/o/text.mp3";
           await _flutterFFmpeg
              .execute("-f gif -i $inputFile $outputFile")
              .then((rc) {
            print("FFmpeg process 1 exited with rc $rc");

          });
          // await _flutterFFmpeg.execute("-i  -i $audiofile -c copy $outputFile")
          //     .then((return_code) => print("Return code $return_code"));
          double offsetx = 0.0;
          double offsety = 0.0;
          //ffmpeg -i input.mp4 -vf scale=1280:720 -preset slow -crf 18 output.mp4
          // String commandToExecute = "-f mp3 -i ${audiofile} -f gif -i ${inputFile} -vf scale=1280:720 -preset slow -crf 18 ${outputFile}";
          String commandToExecute =
              '-f mp3 -i ${audiofile} -f gif -i ${inputFile} -y ${outputFilePath.path}';

          // -vf scale=3840:-1
          //-vf scale=1280:-1 -y
          //-vf scale=720x406,setdar=16:9  next try

          //-vf scale=1280:720
          //FFMPEG RESOLUTION 720*480
          //ffmpeg -i input.avi -s 720x480 -c:a copy output.mkv

          FFmpegKit.execute(commandToExecute).then((session) async {
            final returnCode = await session.getReturnCode();

            if (ReturnCode.isSuccess(returnCode)) {

              // SUCCESS
              final output = await session.getOutput();
              print("the output is :${output}");

            } else if (ReturnCode.isCancel(returnCode)) {

              // CANCEL

            } else {

              // ERROR

            }
          });
           await FFmpegKit.executeAsync(
              '-y -i $inputFile -i $audiofile -c:v libx264 -tune stillimage -c:a aac -b:a 192k -pix_fmt yuv420p ${outputFilePath.path}',
                  (session) async {
                final state = await session.getState();

                final returnCode = await session.getReturnCode();

                String? output = await session.getOutput();
                print(output);

                if (ReturnCode.isSuccess(returnCode)) {
                  // SUCCESS
                 print("Suceess $returnCode");
                 GallerySaver.saveVideo("${outputFilePath.path}").then((value) => print("Saved the video with quality"));
                } else if (ReturnCode.isCancel(returnCode)) {
                  // CANCEL
                  print("Cancel $returnCode");
                } else {
                  // ERROR
                  print("else $returnCode");
                }
              });

          await _flutterFFmpeg.execute(commandToExecute).then((rc) async {
            print('FFmpeg process exited with rc: $rc');
            print("Final File is : ${outputFilePath}");
            GallerySaver.saveVideo("${outputFilePath.path}").then((value) => print("Saved the video with quality"));
            // GallerySaver.saveImage("${file.path}").then((value) => print("Saved the gif with quality"));
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => GifView(outputFilePath)),
            // );
            //
            // GallerySaver.saveImage("${file}").then((value) => print("Saved the video with quality"));

            // final newoutputFilePath =
            //     await new File('${tempDir.path}/qualitytest13mp4.mp4').create();
            // String fffile = newoutputFilePath.path;
            // print("qulity video ${fffile}");
            // // String newmp4File = "-f -i $outputFile -vf scale=1280:720 ${fffile}";
            // final arguments = '-y -i $outputFile ' +
            //     '-preset ultrafast -g 48 -sc_threshold 0 ' +
            //     '-map 0:0 -map 0:1 -map 0:0 -map 0:1 ' +
            //     '-c:v:0 libx264 -b:v:0 2000k ' +
            //     '-c:v:1 libx264 -b:v:1 365k ' +
            //     '-c:a copy ' +
            //     '-var_stream_map "v:0,a:0 v:1,a:1" ' +
            //     '-master_pl_name master.m3u8 ' +
            //     '-f hls -hls_time 6 -hls_list_size 0 ' +
            //     '-hls_segment_filename "$fffile/%v_fileSequence_%d.ts" ' +
            //     '$fffile/%v_playlistVariant.m3u8';
            // await _flutterFFmpeg.execute(arguments).then((value) {
            //   print("New Video with qality is saved $value");
            //   GallerySaver.saveVideo("${fffile}").then((value) => print("Saved the video with quality"));
            // });
          });
          // GallerySaver.saveImage(file.path)
          //     .then((value) => print("Gif is Saved"));
        } on PlatformException catch (e, s) {
          print(e);
          print(s);
        }
        setState(() {
          _result = success ? "Save to album success" : "Save to album failed";
          print("Gif creation result : $_result");
        });
        showDialog(
          context: context,
          builder: (context) {
            print("Gif creation is complted");
            // isLoading = false;
            return AlertDialog(
              content: Image.memory(Uint8List.fromList(gif)),
              // content: GifImage(
              //   image: MemoryImage(Uint8List.fromList(gif!)),
              //   controller: gifController,
              //     // child: Image.memory(Uint8List.fromList(gif!))
              // ),
            );
          },
        );
      });
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ScreenRecorder(
                height: 700,
                width: 700,
                controller: controller,
                background: Colors.transparent,
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/audio/asdfgh.gif"),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextAnimatorSequence(
                              children: [
                                TextAnimator(
                                  'Wedding Invitation',
                                  incomingEffect: WidgetTransitionEffects
                                      .incomingScaleDown(),
                                  atRestEffect: WidgetRestingEffects.none(),
                                  outgoingEffect:
                                  WidgetTransitionEffects.outgoingScaleUp(),
                                  initialDelay: Duration(seconds: 2),
                                  style: GoogleFonts.greatVibes(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 25,
                                      letterSpacing: -2,
                                      color: Color(0xffeb3b78)),
                                ),
                                TextAnimator(
                                  '',
                                  incomingEffect: WidgetTransitionEffects
                                      .incomingScaleDown(),
                                  atRestEffect: WidgetRestingEffects.bounce(),
                                  outgoingEffect:
                                  WidgetTransitionEffects.outgoingScaleUp(),
                                ),
                              ],
                              loop: false,
                              transitionTime: const Duration(seconds: 4),
                            ),
                            TextAnimatorSequence(
                              children: [
                                TextAnimator(
                                  'Vennu Family',
                                  initialDelay: Duration(seconds: 2),
                                  incomingEffect: WidgetTransitionEffects
                                      .incomingScaleDown(),
                                  atRestEffect: WidgetRestingEffects.none(),
                                  outgoingEffect:
                                  WidgetTransitionEffects.outgoingScaleUp(),
                                  style: GoogleFonts.greatVibes(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 45,
                                      letterSpacing: -2,
                                      color: Color(0xffeb3b78)),
                                ),
                                TextAnimator(
                                  '',
                                  incomingEffect: WidgetTransitionEffects
                                      .incomingScaleDown(),
                                  atRestEffect: WidgetRestingEffects.bounce(),
                                  outgoingEffect:
                                  WidgetTransitionEffects.outgoingScaleUp(),
                                ),
                              ],
                              loop: false,
                              transitionTime: const Duration(seconds: 4),
                            )
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextAnimatorSequence(
                              children: [
                                TextAnimator(
                                  'Ravi Kumar',
                                  incomingEffect: WidgetTransitionEffects
                                      .incomingScaleDown(),
                                  atRestEffect: WidgetRestingEffects.none(),
                                  initialDelay: Duration(seconds: 8),
                                  outgoingEffect:
                                  WidgetTransitionEffects.outgoingScaleUp(),
                                  style: GoogleFonts.greatVibes(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 35,
                                      letterSpacing: -2,
                                      color: Color(0xffeb3b78)),
                                ),
                                TextAnimator(
                                  '',
                                  incomingEffect: WidgetTransitionEffects
                                      .incomingScaleDown(),
                                  atRestEffect: WidgetRestingEffects.bounce(),
                                  outgoingEffect:
                                  WidgetTransitionEffects.outgoingScaleUp(),
                                ),
                              ],
                              loop: false,
                              transitionTime: const Duration(seconds: 4),
                            ),
                            TextAnimatorSequence(
                              children: [
                                TextAnimator(
                                  '&',
                                  incomingEffect: WidgetTransitionEffects
                                      .incomingScaleDown(),
                                  atRestEffect: WidgetRestingEffects.none(),
                                  initialDelay: Duration(seconds: 8),
                                  outgoingEffect:
                                  WidgetTransitionEffects.outgoingScaleUp(),
                                  style: GoogleFonts.greatVibes(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 35,
                                      letterSpacing: -2,
                                      color: Color(0xffeb3b78)),
                                ),
                                TextAnimator(
                                  '',
                                  incomingEffect: WidgetTransitionEffects
                                      .incomingScaleDown(),
                                  atRestEffect: WidgetRestingEffects.bounce(),
                                  outgoingEffect:
                                  WidgetTransitionEffects.outgoingScaleUp(),
                                ),
                              ],
                              loop: false,
                              transitionTime: const Duration(seconds: 4),
                            ),
                            TextAnimatorSequence(
                              children: [
                                TextAnimator(
                                  'Ishu',
                                  incomingEffect: WidgetTransitionEffects
                                      .incomingScaleDown(),
                                  atRestEffect: WidgetRestingEffects.none(),
                                  initialDelay: Duration(seconds: 8),
                                  outgoingEffect:
                                  WidgetTransitionEffects.outgoingScaleUp(),
                                  style: GoogleFonts.greatVibes(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 35,
                                      letterSpacing: -2,
                                      color: Color(0xffeb3b78)),
                                ),
                                TextAnimator(
                                  '',
                                  incomingEffect: WidgetTransitionEffects
                                      .incomingScaleDown(),
                                  atRestEffect: WidgetRestingEffects.bounce(),
                                  outgoingEffect:
                                  WidgetTransitionEffects.outgoingScaleUp(),
                                ),
                              ],
                              loop: false,
                              transitionTime: const Duration(seconds: 4),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextAnimatorSequence(
                              children: [
                                TextAnimator(
                                  'Are getting',
                                  incomingEffect: WidgetTransitionEffects
                                      .incomingScaleDown(),
                                  atRestEffect: WidgetRestingEffects.none(),
                                  initialDelay: Duration(seconds: 13),
                                  outgoingEffect:
                                  WidgetTransitionEffects.outgoingScaleUp(),
                                  style: GoogleFonts.greatVibes(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 35,
                                      letterSpacing: -2,
                                      color: Color(0xffeb3b78)),
                                ),
                                TextAnimator(
                                  '',
                                  incomingEffect: WidgetTransitionEffects
                                      .incomingScaleDown(),
                                  atRestEffect: WidgetRestingEffects.bounce(),
                                  outgoingEffect:
                                  WidgetTransitionEffects.outgoingScaleUp(),
                                ),
                              ],
                              loop: false,
                              transitionTime: const Duration(seconds: 4),
                            ),
                            TextAnimatorSequence(
                              children: [
                                TextAnimator(
                                  'Married',
                                  incomingEffect: WidgetTransitionEffects
                                      .incomingScaleDown(),
                                  atRestEffect: WidgetRestingEffects.none(),
                                  initialDelay: Duration(seconds: 13),
                                  outgoingEffect:
                                  WidgetTransitionEffects.outgoingScaleUp(),
                                  style: GoogleFonts.greatVibes(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 35,
                                      letterSpacing: -2,
                                      color: Color(0xffeb3b78)),
                                ),
                                TextAnimator(
                                  '',
                                  incomingEffect: WidgetTransitionEffects
                                      .incomingScaleDown(),
                                  atRestEffect: WidgetRestingEffects.bounce(),
                                  outgoingEffect:
                                  WidgetTransitionEffects.outgoingScaleUp(),
                                ),
                              ],
                              loop: false,
                              transitionTime: const Duration(seconds: 4),
                            ),
                            TextAnimatorSequence(
                              children: [
                                TextAnimator(
                                  'on May 6, 2023',
                                  incomingEffect: WidgetTransitionEffects
                                      .incomingScaleDown(),
                                  atRestEffect: WidgetRestingEffects.none(),
                                  initialDelay: Duration(seconds: 13),
                                  outgoingEffect:
                                  WidgetTransitionEffects.outgoingScaleUp(),
                                  style: GoogleFonts.greatVibes(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 35,
                                      letterSpacing: -2,
                                      color: Color(0xffeb3b78)),
                                ),
                                TextAnimator(
                                  '',
                                  incomingEffect: WidgetTransitionEffects
                                      .incomingScaleDown(),
                                  atRestEffect: WidgetRestingEffects.bounce(),
                                  outgoingEffect:
                                  WidgetTransitionEffects.outgoingScaleUp(),
                                ),
                              ],
                              loop: false,
                              transitionTime: const Duration(seconds: 4),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextAnimatorSequence(
                              children: [
                                TextAnimator(
                                  'Wedding',
                                  incomingEffect: WidgetTransitionEffects
                                      .incomingScaleDown(),
                                  atRestEffect: WidgetRestingEffects.none(),
                                  initialDelay: Duration(seconds: 18),
                                  outgoingEffect:
                                  WidgetTransitionEffects.outgoingScaleUp(),
                                  style: GoogleFonts.greatVibes(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 35,
                                      letterSpacing: -2,
                                      color: Color(0xffeb3b78)),
                                ),
                                TextAnimator(
                                  '',
                                  incomingEffect: WidgetTransitionEffects
                                      .incomingScaleDown(),
                                  atRestEffect: WidgetRestingEffects.bounce(),
                                  outgoingEffect:
                                  WidgetTransitionEffects.outgoingScaleUp(),
                                ),
                              ],
                              loop: false,
                              transitionTime: const Duration(seconds: 4),
                            ),
                            TextAnimatorSequence(
                              children: [
                                TextAnimator(
                                  'Monday May 8, 2023 08:00 PM onwards',
                                  incomingEffect: WidgetTransitionEffects
                                      .incomingScaleDown(),
                                  atRestEffect: WidgetRestingEffects.none(),
                                  initialDelay: Duration(seconds: 18),
                                  outgoingEffect:
                                  WidgetTransitionEffects.outgoingScaleUp(),
                                  style: GoogleFonts.greatVibes(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      letterSpacing: -2,
                                      color: Color(0xffeb3b78)),
                                ),
                                TextAnimator(
                                  '',
                                  incomingEffect: WidgetTransitionEffects
                                      .incomingScaleDown(),
                                  atRestEffect: WidgetRestingEffects.bounce(),
                                  outgoingEffect:
                                  WidgetTransitionEffects.outgoingScaleUp(),
                                ),
                              ],
                              loop: false,
                              transitionTime: const Duration(seconds: 4),
                            ),
                            TextAnimatorSequence(
                              children: [
                                TextAnimator(
                                  'Star Hotel, Kavi Nagole,Hyderabd',
                                  incomingEffect: WidgetTransitionEffects
                                      .incomingScaleDown(),
                                  atRestEffect: WidgetRestingEffects.none(),
                                  initialDelay: Duration(seconds: 18),
                                  outgoingEffect:
                                  WidgetTransitionEffects.outgoingScaleUp(),
                                  style: GoogleFonts.greatVibes(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      letterSpacing: -2,
                                      color: Color(0xffeb3b78)),
                                ),
                                TextAnimator(
                                  '',
                                  incomingEffect: WidgetTransitionEffects
                                      .incomingScaleDown(),
                                  atRestEffect: WidgetRestingEffects.bounce(),
                                  outgoingEffect:
                                  WidgetTransitionEffects.outgoingScaleUp(),
                                ),
                              ],
                              loop: false,
                              transitionTime: const Duration(seconds: 4),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // child: Center(child: Text("$_counter",style: TextStyle(fontSize: 30),)),
                // child: Center(
                //   child: Image.network("https://64.media.tumblr.com/ce972b0bc3b58599e39b5272513a8016/ba4eb1b087bb3412-43/s500x750/49d5b425e019427d2f53975ede6b350117e529f2.gifv")
                // ),
              ),
            ),
             ElevatedButton(
              onPressed: () {
                controller.start();
              },
              child: Text('Start'),
            ),
            ElevatedButton(
              onPressed: () {
                controller.stop();
              },
              child: Text('Stop'),
            ),
            // ElevatedButton(
            //   onPressed: () async {
            //     var gif = await controller.export();
            //     showDialog(
            //       context: context,
            //       builder: (context) {
            //         return AlertDialog(
            //           content: Image.memory(Uint8List.fromList(gif!)),
            //           // content: GifImage(
            //           //   image: MemoryImage(Uint8List.fromList(gif!)),
            //           //   controller: gifController,
            //           //     // child: Image.memory(Uint8List.fromList(gif!))
            //           // ),
            //         );
            //       },
            //     );
            //   },
            //   child: Text('show recoded video'),
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}*/
/*
class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late TyperAnimatedTextKit _animatedTextWidget;
  Widget _animatedTextWidget2 = Container();

  @override
  void initState() {
    _animatedTextWidget = intiateWidget1();
    _animatedTextWidget2;

    super.initState();
  }
  TyperAnimatedTextKit intiateWidget1() {
    print('initiate 1');
    return TyperAnimatedTextKit(
        key: GlobalKey(),
        onTap: () {
          print("Tap Event");
        },
        text: [
          "Welcome to this application!",
          // "This application demonstrates TyperAnimatedTextKit",
        ],
        displayFullTextOnTap: true,
        isRepeatingAnimation: false,
        speed: new Duration(milliseconds: 50),
        textStyle: TextStyle(
          fontSize: 24.0,
          fontFamily: "Arvo-Regular",
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
        // alignment: AlignmentDirectional.centerStart,
        onFinished: intiateWidget2
    );
  }

  void intiateWidget2() {
    print('in initiate 2');
    setState(() {
      this._animatedTextWidget2 = TyperAnimatedTextKit(
          key: GlobalKey(),
          onTap: () {
            print("Tap Event");
          },
          text: [
            "Let's get started",
            "with our top secret impossible mission",
          ],
          displayFullTextOnTap: true,
          isRepeatingAnimation: false,
          speed: new Duration(milliseconds: 50),
          textStyle: TextStyle(
            fontSize: 24.0,
            fontFamily: "Arvo-Regular",
            color: Colors.green,
          ),
          textAlign: TextAlign.center,
          // alignment: AlignmentDirectional.centerStart,
          onFinished: () => print('finished the second'));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              this._animatedTextWidget,
              Container(height: 15,),
              this._animatedTextWidget2
            ],
          ),
        )
    );
  }
}




class TestVideoRecord extends StatefulWidget {
  const TestVideoRecord({Key? key}) : super(key: key);

  @override
  _TestVideoRecordState createState() => _TestVideoRecordState();
}

class _TestVideoRecordState extends State<TestVideoRecord> {
  late VideoPlayerController _videoPlayerController;

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
          child:  _videoPlayerController.value.isInitialized
               ? VideoPlayer(_videoPlayerController)
               : CircularProgressIndicator(),
        ),
      ),
    );
  }
}*/
