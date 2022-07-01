import 'package:card_poc/constains/controllers.dart';
import 'package:card_poc/views/save_the_date_templets/form/save_the_date_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SaveTheDateTwo extends StatefulWidget {
  @override
  _SaveTheDateTwoState createState() => _SaveTheDateTwoState();
}

class _SaveTheDateTwoState extends State<SaveTheDateTwo> {
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
                  child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.network(
                          "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/rm171-sasi-22_1-kuglgviv.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=7a299b37c1278fe42aca586764cfb88b",
                          fit: BoxFit.fill,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Invitation",
                              style: GoogleFonts.lobster(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 55,
                                  color: Colors.black54),
                            ),
                            Text(
                              "save the date",
                              style: GoogleFonts.lobster(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 35,
                                  color: Colors.black54,
                                  letterSpacing: 2),
                            ),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "${saveTheDateController.userdata.read('brideName')}",
                                      style: GoogleFonts.greatVibes(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 35,
                                          color: Colors.black54),
                                    ),
                                    Text(
                                      "&",
                                      style: GoogleFonts.greatVibes(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 35,
                                          color: Colors.black54),
                                    ),
                                    Text(
                                      "${saveTheDateController.userdata.read('groomName')}",
                                      style: GoogleFonts.greatVibes(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 35,
                                          color: Colors.black54),
                                    ),
                                  ],
                                )),
                            Text(
                              "TOGETHER WITH THIRE LOVING FAMILES",
                              style: GoogleFonts.lobster(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 20,
                                  color: Colors.black54),
                            ),
                            Text(
                              "${saveTheDateController.userdata.read('date')}",
                              style: GoogleFonts.gothicA1(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black54),
                            ),
                            Text(
                              "${saveTheDateController.userdata.read('place')}",
                              style: GoogleFonts.lobster(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
       /* floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    if(saveTheDateController.userdata.read('brideName') == null){
                      Get.to(SaveTheDateForm());
                    }else{
                      saveTheDateController.takePicture();
                    }
                  },
                  child: Container(
                    width: width / 2,
                    height: height / 14,
                    color: Colors.brown,
                    child: Center(
                      child: Text(
                        saveTheDateController.userdata.read('brideName') == null? "Use Templet" : "Bye Templet",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  if (saveTheDateController.userdata.read('brideName') == null) {
                    Get.to(SaveTheDateForm());
                  } else {
                    saveTheDateController.takePicture();
                  }
                },
                child: Container(
                  width: width / 2,
                  height: height / 14,
                  color: Colors.brown,
                  child: Center(
                    child: Text(
                      "Edit Templet",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )*/);
  }
}
