import 'package:card_poc/constains/constains.dart';
import 'package:card_poc/constains/controllers.dart';
import 'package:card_poc/views/home/home_page.dart';
import 'package:card_poc/views/save_the_date_templets/save_the_date_one.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';



class SaveTheDateForm extends StatefulWidget {
  @override
  _SaveTheDateFormState createState() => _SaveTheDateFormState();
}

class _SaveTheDateFormState extends State<SaveTheDateForm> {

  // TextEditingController brideNameController = TextEditingController();
  // TextEditingController groomNameController= TextEditingController();
  // TextEditingController dateController= TextEditingController();
  // TextEditingController placeController= TextEditingController();
  // TextEditingController locationController= TextEditingController();


  String _selectedGender = 'Boy Side';

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Details"),
        backgroundColor: primaryColor,
      ),
        body: SingleChildScrollView(
          child: Container(
            width: width,
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: Radio<String>(
                          value: "Boy's Side (Groom)",
                          groupValue: _selectedGender,
                          onChanged: (value) {
                            setState(() {
                              _selectedGender = value!;
                              //print("$_selectedGender");
                              userDetailsController.getEventSide(_selectedGender);
                            });
                          },
                        ),
                        title: const Text("Boy's Side (Groom)"),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        leading: Radio<String>(
                          value: "Girl's Side (Bride)",
                          groupValue: _selectedGender,
                          onChanged: (value) {
                            setState(() {
                              _selectedGender = value!;
                              // print("$_selectedGender");
                              userDetailsController.getEventSide(_selectedGender);
                            });
                          },
                        ),
                        title: const Text("Girl's Side (Bride)"),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller:  userDetailsController.groomName,
                    decoration: InputDecoration(hintText: "GroomName"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: userDetailsController.brideName,
                    decoration: InputDecoration(hintText: "BrideName"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: userDetailsController.date,
                    decoration: InputDecoration(hintText: "Date"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: userDetailsController.place,
                    decoration: InputDecoration(hintText: "Place"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: userDetailsController.location,
                    decoration: InputDecoration(hintText: "Location"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        saveTheDateController.userdata.write("brideName", userDetailsController.brideName.text);
                        saveTheDateController.userdata.write("groomName", userDetailsController.groomName.text);
                        saveTheDateController.userdata.write("date", userDetailsController.date.text);
                        saveTheDateController.userdata.write("place", userDetailsController.place.text);
                        saveTheDateController.userdata.write("location", userDetailsController.location.text);
                        saveTheDateController.userdata.write("selectedGender", userDetailsController.selectedGender.value);
                        // Get.back();
                        Get.to(HomePage());
                      });
                      // userDetailsController.addUserFirebase();
                      // Get.to(SaveTheDateOne());
                      // Navigator.of(context).pop(userDetailsController.brideName.text);
                      // Navigator.push(context ,MaterialPageRoute(builder: (BuildContext context) => FinalTempletScreen(brideName,groomName, date,place,location)));
                    },
                    child: Container(
                      width: width/2,
                      height: height/14,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      
                      child: Center(
                        child: Text(
                          "Save",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
