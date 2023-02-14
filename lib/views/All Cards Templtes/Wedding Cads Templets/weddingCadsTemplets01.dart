import 'package:card_poc/constains/controllers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeddingCadsTemplets01 extends StatelessWidget {
  String templetImag;
  WeddingCadsTemplets01(this.templetImag);

  Color templetTextColor = Color(0xff5e290b);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      child: RepaintBoundary(
        key: saveTheDateController.genKey,
        child: Container(
          width: width,
          height: height,
          child: Stack(
              alignment: Alignment.center,
              children: [
                Image.network(
                  "$templetImag",
                  fit: BoxFit.fill,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Vennu's",
                      style: GoogleFonts.lobster(
                          fontWeight: FontWeight.w400,
                          fontSize: 25,
                          color: templetTextColor
                      ),
                    ),
                    Text(
                      "Wedding Invitation",
                      style: GoogleFonts.lobster(
                          fontWeight: FontWeight.w400,
                          fontSize: 25,
                          color: templetTextColor),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${saveTheDateController.userdata.read('brideName') == null
                                  ? "${saveTheDateController.brideName}"
                                  : userDetailsController.selectedGender.value != "Boy's Side (Groom)"?"${saveTheDateController.userdata.read('brideName')}": "${saveTheDateController.userdata.read('groomName')}"}",
                              style: GoogleFonts.greatVibes(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: templetTextColor),
                            ),
                            SizedBox(width: 10,),
                            Text(
                              "&",
                              style: GoogleFonts.greatVibes(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: templetTextColor),
                            ),
                            SizedBox(width: 10,),
                            Text(
                              "${saveTheDateController.userdata.read('groomName') == null
                                  ? "${saveTheDateController.groomName}"
                                  : userDetailsController.selectedGender.value == "Boy's Side (Groom)"?"${saveTheDateController.userdata.read('brideName')}": "${saveTheDateController.userdata.read('groomName')}"}",
                              style: GoogleFonts.greatVibes(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: templetTextColor),
                            ),
                          ],
                        )),
                    Text(
                      "TOGETHER WITH THIRE LOVING FAMILES",
                      style: GoogleFonts.lobster(
                          fontWeight: FontWeight.w300,
                          fontSize: 22,
                          color: templetTextColor),
                    ),
                    Text(
                      "${saveTheDateController.userdata.read('date') == null ? "${saveTheDateController.date}" : "${saveTheDateController.userdata.read('date')}"}",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: templetTextColor),
                    ),
                    Text(
                      "${saveTheDateController.userdata.read('place') == null ? "${saveTheDateController.place}" : "${saveTheDateController.userdata.read('place')}"}",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: templetTextColor),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
