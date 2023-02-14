import 'package:card_poc/constains/controllers.dart';
import 'package:card_poc/views/save_the_date_templets/form/save_the_date_form.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SaveTheDateThree extends StatefulWidget {
  @override
  _SaveTheDateThreeState createState() => _SaveTheDateThreeState();
}

class _SaveTheDateThreeState extends State<SaveTheDateThree> {
  String brideName = "Rama";
  String groomName = "Roja";
  String date = "SUNDAY 21 OCT - 2018";
  String place = "Hyderabad";
  String location = "Laxmi Garder";

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
                          "https://img.lovepik.com/background/20211029/medium/lovepik-green-ribbon-invitation-literary-floral-background-image_605822078.jpg",
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
                                      brideName,
                                      style: GoogleFonts.greatVibes(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 55,
                                          color: Colors.amberAccent),
                                    ),
                                    Text(
                                      "&",
                                      style: GoogleFonts.greatVibes(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 55,
                                          color: Colors.amberAccent),
                                    ),
                                    Text(
                                      groomName,
                                      style: GoogleFonts.greatVibes(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 55,
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
                              date,
                              style: GoogleFonts.gothicA1(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.amberAccent),
                            ),
                            Text(
                              location,
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
    );
  }
}
