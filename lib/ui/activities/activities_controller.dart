import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ActivitiesController extends GetxController {
  final selectedIndex = 0.obs;

  ///// Get the weekday for a given index
  String getWeekday(DateTime date) {
    // final currentDate = DateTime.now();
    // final date = DateTime(currentDate.year, currentDate.month, index);
    return DateFormat('E').format(date);
  }

  ///// Get the month for a given index
  String getMonth(DateTime date) {
    return DateFormat('MMM').format(date);
  }

  ///// Handle item selection
  void selectItem(int index) {
    selectedIndex.value = index;
  }

  ///// To manage the selected filter
  RxString selectedFilter = "".obs;

  //// Function to update the filter
  void updateFilter(String filter) {
    selectedFilter.value = filter;
  }

  @override
  void onInit() {
    super.onInit();

    final currentDate = DateTime.now();
    selectedIndex.value = currentDate.day;
  }
}


//   ///// To manage the selected item index
//   Rx<int> selectedIndex = 0.obs;

//   ///// Function to update the selected index
//   void selectItem(int index) {
//     selectedIndex.value = index;
//   }

//   ///// To manage the selected filter
//   RxString selectedFilter = "".obs;

//   //// Function to update the filter
//   void updateFilter(String filter) {
//     selectedFilter.value = filter;
//   }

//   ///// To store generated dates
//   RxList<Map<String, String>> dates = <Map<String, String>>[].obs;

//   ///// Function to generate dates for a given month and year
//   void generateMonthDates(int year, int month) {
//     dates.clear(); // Clear previous dates
//     int totalDays = DateTime(year, month + 1, 0).day; // Get the total number of days in the month

//     for (int day = 1; day <= totalDays; day++) {
//       DateTime currentDate = DateTime(year, month, day);
//       dates.add({
//         'day': currentDate.day.toString(),
//         'weekday': getWeekdayName(currentDate.weekday),
//       });
//     }
//   }

//   /////function to get weekday names
//   String getWeekdayName(int weekday) {
//   const weekdays = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'];
//   return (weekday >= 1 && weekday <= 7) ? weekdays[weekday - 1] : '';
// }


//   @override
//   void onInit() {
//     super.onInit();
//     ///// Example: Generate dates for the current month and year on initialization
//     DateTime now = DateTime.now();
//     generateMonthDates(now.year, now.month);
//   }
// }
