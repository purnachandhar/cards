import 'package:get/get.dart';
import 'package:unity_ads_plugin/unity_ads_plugin.dart';

class UnityAdController extends GetxController{
  static UnityAdController instance = Get.find();

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    UnityAds.init(
      gameId: "4940551",
      testMode: true,
      onComplete: () {
        print('Initialization Complete');
      },
      onFailed: (error, message) => print('Initialization Failed: $error $message'),
    );
  }
}