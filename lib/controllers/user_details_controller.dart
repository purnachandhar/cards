import 'package:card_poc/constains/firebase.dart';
import 'package:card_poc/models/userdetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class UserDetailsController extends GetxController {
  static UserDetailsController instance = Get.find<UserDetailsController>();

  Rx<UserDetails> userDetails = UserDetails().obs;

  TextEditingController brideName = TextEditingController();
  TextEditingController groomName = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController place = TextEditingController();
  TextEditingController location = TextEditingController();


  RxString selectedGender = "Boy's Side (Groom)".obs;

  void getEventSide(String value){
    selectedGender.value = value;
    print("from the controller ${selectedGender.value}");
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
  Stream<UserDetails> listToUsers() => firebaseFirestore
      .collection("usersCollection")
      .doc()
      .snapshots()
      .map((snapshot) => UserDetails.fromSnapshot(snapshot));

  void addUserFirebase() {
    // userDetails.bindStream(listToUsers());
    firebaseFirestore.collection("usersCollection").doc().set({
      "brideName": brideName.text.trim(),
      "groomName": groomName.text.trim(),
      "date": date.text.trim(),
      "place": place.text.trim(),
      "location": location.text.trim(),
      "selectedGender":selectedGender
    });
    Get.back();
  }
}
