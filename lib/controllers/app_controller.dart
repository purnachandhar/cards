import 'package:card_poc/views/home/home_page.dart';
import 'package:get/get.dart';

class AppController extends GetxController{
  static AppController instance = Get.find<AppController>();
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    Get.offAll(() => HomePage());
  }
}
