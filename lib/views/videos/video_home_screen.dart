import 'package:flutter/material.dart';

class VideosHomeScreen extends StatelessWidget {


  List<String> videoUrls = [
    "https://firebasestorage.googleapis.com/v0/b/meara-cbf57.appspot.com/o/wedding%20files%2Ftemp2%2Fasdfgh.gif?alt=media&token=1db18bce-cf2d-4224-a064-14a50509a23d",
    "https://firebasestorage.googleapis.com/v0/b/meara-cbf57.appspot.com/o/wedding%20files%2Ftemp2%2Fasdfgh.gif?alt=media&token=1db18bce-cf2d-4224-a064-14a50509a23d",
    "https://firebasestorage.googleapis.com/v0/b/meara-cbf57.appspot.com/o/wedding%20files%2Ftemp2%2Fezgif.com-gif-maker%20(1).gif?alt=media&token=851a0acf-e940-42be-a40e-3d8ecc982ce6",
    "https://firebasestorage.googleapis.com/v0/b/meara-cbf57.appspot.com/o/wedding%20files%2Ftemp2%2Fasdfgh.gif?alt=media&token=1db18bce-cf2d-4224-a064-14a50509a23d",
  ];

  var saveTheDateVideos = [
    {
      "image":"https://i.pinimg.com/736x/cc/f5/7f/ccf57f70756dd84d84f6db7d44330e63.jpg",
      // "templetWidget" : SaveTheDateOne(),
      "date": "01 July 2002",
      "templetId":"saveTheCard000001",
      "categories":"savethedate",
      "price":"100",
    },
  ];
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(

      body: Container(
        child: GridView.builder(
          itemCount: videoUrls.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: (0.7),
              crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: (){
                  debugPrint("${videoUrls[index]}");
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => ViewTemplet(myWidgets[index])),
                  // );
                },
                child: new Card(
                  color: Colors.transparent,
                  elevation: 0.0,
                  child: Image.network(videoUrls[index],),
                )
            );
          },
        ),
      ),
    );
  }
}
