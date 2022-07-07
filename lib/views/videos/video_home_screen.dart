import 'package:card_poc/views/videos/save_the_date_video_templets/std_video_one.dart';
import 'package:card_poc/views/videos/save_the_date_video_templets/std_video_two.dart';
import 'package:card_poc/views/videos/video_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideosHomeScreen extends StatelessWidget {
  List<String> videoUrls = [
    "https://firebasestorage.googleapis.com/v0/b/meara-cbf57.appspot.com/o/wedding%20files%2Ftemp2%2Fasdfgh.gif?alt=media&token=1db18bce-cf2d-4224-a064-14a50509a23d",
    "https://firebasestorage.googleapis.com/v0/b/meara-cbf57.appspot.com/o/wedding%20files%2Ftemp2%2Fasdfgh.gif?alt=media&token=1db18bce-cf2d-4224-a064-14a50509a23d",
    "https://firebasestorage.googleapis.com/v0/b/meara-cbf57.appspot.com/o/wedding%20files%2Ftemp2%2Fezgif.com-gif-maker%20(1).gif?alt=media&token=851a0acf-e940-42be-a40e-3d8ecc982ce6",
    "https://firebasestorage.googleapis.com/v0/b/meara-cbf57.appspot.com/o/wedding%20files%2Ftemp2%2Fasdfgh.gif?alt=media&token=1db18bce-cf2d-4224-a064-14a50509a23d",
  ];

  var saveTheDateVideos = [
    {
      "videoGif":"https://firebasestorage.googleapis.com/v0/b/cards-31f5c.appspot.com/o/asdfgh.gif?alt=media&token=d4ce58da-d690-41a2-9e3f-055945121cfd",
      "video":"https://firebasestorage.googleapis.com/v0/b/cards-31f5c.appspot.com/o/asdfg.mp4?alt=media&token=53f93656-6c57-4781-896d-c53327243f3f",
      "templetWidget" : STDVideoTwo(),
      "date": "04 July 2002",
      "templetId": "saveTheVideo000001",
      "categories": "savethedatevideo",
      "price": "100",
    },
    {
      "videoGif":
          "https://firebasestorage.googleapis.com/v0/b/cards-31f5c.appspot.com/o/wd.gif?alt=media&token=ea686621-ead0-4848-936a-3aed55d89134",
      "video":"https://firebasestorage.googleapis.com/v0/b/cards-31f5c.appspot.com/o/wd.mp4?alt=media&token=87bf9bec-6edf-4458-92e3-3cca35a98e5d",
      "templetWidget" : STDVideoOne(),
      "date": "04 July 2002",
      "templetId": "saveTheVideo000002",
      "categories": "savethedatevideo",
      "price": "150",
    },
/*
    {
      "videoGif":
          "https://firebasestorage.googleapis.com/v0/b/otpverification-afd81.appspot.com/o/wd.gif?alt=media&token=9f4aa015-2768-4427-8905-377f75de86a8",
      "video":"https://firebasestorage.googleapis.com/v0/b/otpverification-afd81.appspot.com/o/wd.mp4?alt=media&token=956ecba2-0bca-480c-b52c-28255a123a11",
      "templetWidget" : STDVideoOne(),
      "date": "04 July 2002",
      "templetId": "saveTheVideo000003",
      "categories": "savethedatevideo",
      "price": "250",
    },
*/
  ];

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: Container(
        child: GridView.builder(
          itemCount: saveTheDateVideos.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: (0.7), crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
                  debugPrint("${saveTheDateVideos[index]['video']}");
                  Get.to(() => VideoView(
                      "${saveTheDateVideos[index]['video']}",
                      "${saveTheDateVideos[index]['price']}",
                      "${saveTheDateVideos[index]['templetId']}",
                      "${saveTheDateVideos[index]['categories']}",
                       saveTheDateVideos[index]['templetWidget'] as Widget,

                    )
                  );
                },
                child: Card(
                  color: Colors.transparent,
                  elevation: 0.0,
                  child: Image.network(
                    "${saveTheDateVideos[index]['videoGif']}",
                    height: 300,
                    fit: BoxFit.contain,
                    frameBuilder: (_, image, loadingBuilder, __) {
                      if (loadingBuilder == null) {
                        return const SizedBox(
                          height: 300,
                          child: Center(child: CircularProgressIndicator()),
                        );
                      }
                      return image;
                    },
                    loadingBuilder: (BuildContext context, Widget image, ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) return image;
                      return SizedBox(
                        height: 300,
                        child: Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        ),
                      );
                    },
                    errorBuilder: (_, __, ___) => FlutterLogo(),
                  ),
                ));
          },
        ),
      ),
    );
  }
}
