import 'package:get/get.dart';

class HomeController extends GetxController{

  static HomeController instance = Get.find();
  var tabIndex = 0.obs;

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    changeTabIndex(0);

  }
  void changeTabIndex(int index) {
    tabIndex.value = index;
    print("thab index is $tabIndex");
  }
}
