import 'package:card_poc/views/card_templets/temp_one/templet_form_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TempletScreen extends StatefulWidget {
  @override
  _TempletScreenState createState() => _TempletScreenState();
}

class _TempletScreenState extends State<TempletScreen> {
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
              Container(
                width: width,
                height: height,
                child: Stack(
                    alignment: Alignment.center,
                    children: [
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
                                brideName,
                                style: GoogleFonts.greatVibes(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 85,
                                    color: Colors.amberAccent),
                              ),
                              Text(
                                "&",
                                style: GoogleFonts.greatVibes(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 85,
                                    color: Colors.amberAccent),
                              ),
                              Text(
                                groomName,
                                style: GoogleFonts.greatVibes(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 75,
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
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TempletFormScreen()),
                );
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
        ));
  }
}
