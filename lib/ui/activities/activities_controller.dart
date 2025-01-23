import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ActivitiesController extends GetxController {
  ///// Get the weekday for a given index
  String getWeekday(DateTime date) {
    return DateFormat('E').format(date).toUpperCase();
  }

  ///// Get the month for a given index
  String getMonth(DateTime date) {
    return DateFormat('MMM').format(date).toUpperCase();
  }

  final selectedIndex = 0.obs;

  ///// Handle item selection
  void selectItem(int index) {
    selectedIndex.value = index;
  }

  RxString selectedText1 = 'All'.obs; // For the first field in `myDialog`
  RxString selectedText2 = 'All'.obs; // For the second field in `myDialog`

  // Update the first field's text
  void updateSelectedText1(String text) {
    selectedText1.value = text;
  }

  // Update the second field's text
  void updateSelectedText2(String text) {
    selectedText2.value = text;
  }

  @override
  void onInit() {
    super.onInit();
    selectedIndex.value = 0;
    final currentDate = DateTime.now();
    selectedIndex.value = currentDate.day;
  }
}
