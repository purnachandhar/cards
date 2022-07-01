import 'package:card_poc/views/save_the_date_templets/form/save_the_date_form.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SaveTheDateFour extends StatefulWidget {
  @override
  _SaveTheDateFourState createState() => _SaveTheDateFourState();
}

class _SaveTheDateFourState extends State<SaveTheDateFour> {
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
                        "https://i.pinimg.com/originals/80/eb/79/80eb797560f2f4d392fdec13a5c59820.png",
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
                  MaterialPageRoute(builder: (context) => SaveTheDateForm()),
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
