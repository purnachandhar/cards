import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:path_provider/path_provider.dart';

import 'package:card_poc/constains/constains.dart';
import 'package:card_poc/constains/controllers.dart';
import 'package:card_poc/controllers/user_details_controller.dart';
import 'package:card_poc/views/save_the_date_templets/form/save_the_date_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:card_poc/constains/constains.dart';

class SaveTheDateOne extends StatefulWidget {
  @override
  _SaveTheDateOneState createState() => _SaveTheDateOneState();
}

class _SaveTheDateOneState extends State<SaveTheDateOne> {
  // String brideName = "Rama";
  // String groomName = "Roja";
  // String date = "SUNDAY 21 OCT - 2018";
  // String place = "Hyderabad";
  // String location = "Laxmi Garder";

  // UserDetailsController controller = Get.find();

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   setState(() {
  //     userdata.read('count')!= null ? brideName : userdata.read("brideName");
  //     print("SaveTheDateOne ${userdata.read("brideName")}");
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              RepaintBoundary(
                key: saveTheDateController.genKey,
                child: Container(
                  width: width,
                  height: height,
                  child: Stack(alignment: Alignment.center, children: [
                    Image.network(
                      "https://i.pinimg.com/736x/cc/f5/7f/ccf57f70756dd84d84f6db7d44330e63.jpg",
                      fit: BoxFit.fill,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Invitation",
                          style: GoogleFonts.greatVibes(
                              fontWeight: FontWeight.w400,
                              fontSize: 85,
                              color: Colors.amberAccent),
                        ),
                        Text(
                          "save the date",
                          style: GoogleFonts.gothicA1(
                              fontWeight: FontWeight.w400,
                              fontSize: 35,
                              color: Colors.amberAccent,
                              letterSpacing: 6),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${saveTheDateController.userdata.read('brideName') == null ? "${saveTheDateController.brideName}" : "${saveTheDateController.userdata.read('brideName')}"}",
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
                                  "${saveTheDateController.userdata.read('groomName') == null
                                      ? "${saveTheDateController.groomName}"
                                      :"${saveTheDateController.userdata.read('groomName')}"}",
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
                          "${saveTheDateController.userdata.read('date') == null
                              ?"${saveTheDateController.date}"
                              :"${saveTheDateController.userdata.read('date')}"}",
                          style: GoogleFonts.gothicA1(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.amberAccent),
                        ),
                        Text(
                          "${saveTheDateController.userdata.read('place') == null
                              ?"${saveTheDateController.place}"
                              :"${saveTheDateController.userdata.read('place')}"}",
                          style: GoogleFonts.gothicA1(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.amberAccent),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
        /*floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                if (saveTheDateController.userdata.read('brideName') == null) {
                  Get.to(SaveTheDateForm());
                } else {
                  saveTheDateController.takePicture();
                }
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SaveTheDateForm()),
                // );
              },
              child: Container(
                width: width / 2,
                height: height / 14,
                color: Colors.brown,
                child: Center(
                  child: Text(
                    "Use Templet",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
          ],
        )*/);
  }
}
