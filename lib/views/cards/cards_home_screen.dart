import 'package:card_poc/constains/constains.dart';
import 'package:card_poc/views/card_templets/view_templet.dart';
import 'package:card_poc/views/save_the_date_templets/save_the_date_one.dart';
import 'package:card_poc/views/save_the_date_templets/save_the_date_three.dart';
import 'package:card_poc/views/save_the_date_templets/save_the_date_two.dart';
import 'package:flutter/material.dart';

import '../save_the_date_templets/save_the_date_four.dart';

class CardsHomePage extends StatelessWidget {

  List<Widget> myWidgets = [
    SaveTheDateOne(),
    SaveTheDateTwo(),
    SaveTheDateThree(),
    SaveTheDateFour(),
  ];
  List<String> myImages = [
    "https://i.pinimg.com/736x/cc/f5/7f/ccf57f70756dd84d84f6db7d44330e63.jpg",
    "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/rm171-sasi-22_1-kuglgviv.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=7a299b37c1278fe42aca586764cfb88b",
    "https://img.lovepik.com/background/20211029/medium/lovepik-green-ribbon-invitation-literary-floral-background-image_605822078.jpg",
    "https://i.pinimg.com/originals/80/eb/79/80eb797560f2f4d392fdec13a5c59820.png",
  ];


  var saveTheDateTempltes = [
    {
      "image":"https://i.pinimg.com/736x/cc/f5/7f/ccf57f70756dd84d84f6db7d44330e63.jpg",
      "templetWidget" : SaveTheDateOne(),
      "date": "01 July 2002",
      "templetId":"saveTheCard000001",
      "categories":"savethedate",
      "price":"100",
    },
    {
      "image":"https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/rm171-sasi-22_1-kuglgviv.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=7a299b37c1278fe42aca586764cfb88b",
      "templetWidget" : SaveTheDateTwo(),
      "date": "01 July 2002",
      "templetId":"saveTheCard000002",
      "categories":"savethedate",
      "price":"200",
    },
    {
      "image":"https://img.lovepik.com/background/20211029/medium/lovepik-green-ribbon-invitation-literary-floral-background-image_605822078.jpg",
      "templetWidget" : SaveTheDateThree(),
      "date": "01 July 2002",
      "templetId":"saveTheCard000003",
      "categories":"savethedate",
      "price":"120",
    },
    {
      "image":"https://i.pinimg.com/originals/80/eb/79/80eb797560f2f4d392fdec13a5c59820.png",
      "templetWidget" : SaveTheDateFour(),
      "date": "01 July 2002",
      "templetId":"saveTheCard000004",
      "categories":"savethedate",
      "price":"200",
    },
  ];



  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(

      body: Container(

        child: GridView.builder(
          itemCount: saveTheDateTempltes.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: (0.7),
              crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                debugPrint("${saveTheDateTempltes[index]}");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ViewTemplet(
                      saveTheDateTempltes[index]['templetWidget'] as Widget,
                      saveTheDateTempltes[index]['image'] as String,
                      saveTheDateTempltes[index]['price'] as String,
                      saveTheDateTempltes[index]['categories'] as String,
                      saveTheDateTempltes[index]['templetId'] as String,
                    )
                  ),
                );
              },
              child: new Card(
                color: Colors.transparent,
                  elevation: 0.0,
                  child: Image.network("${saveTheDateTempltes[index]['image']}",),
              )
            );
          },
        ),
      ),
    );
  }
}
