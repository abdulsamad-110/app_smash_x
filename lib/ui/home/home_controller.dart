import 'package:get/get.dart';

class HomeController extends GetxController {


  // RxBool isNewesEnabled = true.obs;
  // void toggleNewesWidget() {
  //   isNewesEnabled.value = !isNewesEnabled.value;
  // } // Set the NewesWidget to true explicitly when CardSlider is tapped
  // void showNewesWidget() {
  //   isNewesEnabled.value = true; // Make it visible
  // }
  // // Hide the NewesWidget
  // void hideNewesWidget() {
  //   isNewesEnabled.value = false; // Hide it
  // }

  Rx<int> selectedIndex = 0.obs;

  void onTabTapped(int index) {
    selectedIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }
}
