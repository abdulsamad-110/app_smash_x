import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<int> selectedIndex = 0.obs;

  void onTabTapped(int index) {
    selectedIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }
}
