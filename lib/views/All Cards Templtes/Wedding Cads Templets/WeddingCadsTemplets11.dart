import 'package:card_poc/constains/controllers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeddingCadsTemplets11 extends StatelessWidget {
  String templetImag;
  WeddingCadsTemplets11(this.templetImag);

  Color templetTextColor = Color(0xff2e9da2);
  Color templetTextColorTwo = Color(0xff0a2e4a);

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
                    SizedBox(height: height/5.5,),
                    Text(
                      "TOGETHER\nWITH THEIR FAMILIES",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: templetTextColor
                      ),
                    ),
                    Container(
                      width: width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${saveTheDateController.userdata.read('brideName') == null
                                ? "${saveTheDateController.brideName}"
                                : userDetailsController.selectedGender.value != "Boy's Side (Groom)"?"${saveTheDateController.userdata.read('brideName')}": "${saveTheDateController.userdata.read('groomName')}"}",
                            style: GoogleFonts.euphoriaScript (
                                fontWeight: FontWeight.normal,
                                fontSize: 45,
                                color: templetTextColorTwo
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "&",
                            style: GoogleFonts.euphoriaScript(
                                fontWeight: FontWeight.w400,
                                fontSize: 45,
                                color: templetTextColorTwo),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "${saveTheDateController.userdata.read('groomName') == null
                                ? "${saveTheDateController.groomName}"
                                : userDetailsController.selectedGender.value == "Boy's Side (Groom)"?"${saveTheDateController.userdata.read('brideName')}": "${saveTheDateController.userdata.read('groomName')}"}",
                            style: GoogleFonts.euphoriaScript(
                                fontWeight: FontWeight.normal,
                                fontSize: 45,
                                color: templetTextColorTwo),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "WE INVITE YOU TO JOIN OUR WEDDING",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
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
