import 'package:card_poc/constains/constains.dart';
import 'package:card_poc/constains/controllers.dart';
import 'package:card_poc/views/cards/cards_home_screen.dart';
import 'package:card_poc/views/home/bottom_bar.dart';
import 'package:card_poc/views/videos/video_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatelessWidget {


  final _inactiveColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text("Invity cards",style: GoogleFonts.greatVibes(
            fontWeight: FontWeight.w400,
            fontSize: 35,
            color: primaryColor),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.supervised_user_circle_sharp,color: primaryColor,size: 30,),
          )
        ],
      ),
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        color: Colors.blue,
        child: Stack(
          children: [
            Obx(() {
              return getBody();
            }),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(left: 60.0, right: 60.0, bottom: 20.0),
                // color: Colors.orange,
                height: 60.0,
                child: _buildBottomBar(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomBar() {
    return Obx(() {
      return CustomAnimatedBottomBar(
        containerHeight: 70,
        backgroundColor: Colors.white,
        selectedIndex: homeController.tabIndex.value,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) {
          homeController.changeTabIndex(index);
        },
        // onItemSelected: (index,) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.card_giftcard),
            title: Text('Cards'),
            activeColor: primaryColor,
            inactiveColor: _inactiveColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.video_collection),
            title: Text(
              'Videos ',
            ),
            activeColor: primaryColor,
            inactiveColor: _inactiveColor,
            textAlign: TextAlign.center,
          ),

        ],
      );
    });
  }

  Widget getBody() {
    List<Widget> pages = [
      CardsHomePage(),
      VideosHomeScreen()
    ];
    return IndexedStack(
      index: homeController.tabIndex.value,
      children: pages,
    );
  }
}
