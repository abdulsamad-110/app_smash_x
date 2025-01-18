// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:smash_x_app/ui/home/home_view.dart';

// import '../bookings/booking_view.dart';

// class ActivitiesController extends GetxController{

//    // Store the selected date index
//   var selectedDateIndex = 0.obs;

//   // List to hold all dates for a given month
//   List<Map<String, String>> dates = [];

//   // Generate dates for the entire month
//   void generateMonthDates(int year, int month) {
//     dates.clear(); // Clear the list first
//     int totalDays =
//         DateTime(year, month + 1, 0).day; // Get total days in the month

//     for (int day = 1; day <= totalDays; day++) {
//       DateTime currentDate = DateTime(year, month, day);
//       dates.add({
//         "day": currentDate.weekday == 7
//             ? "SUN"
//             : [
//                 "MON",
//                 "TUE",
//                 "WED",
//                 "THU",
//                 "FRI",
//                 "SAT"
//               ][currentDate.weekday - 1],
//         "date": currentDate.day.toString().padLeft(2, '0'),
//         "month": [
//           "JAN",
//           "FEB",
//           "MAR",
//           "APR",
//           "MAY",
//           "JUN",
//           "JUL",
//           "AUG",
//           "SEP",
//           "OCT",
//           "NOV",
//           "DEC"
//         ][month - 1],
//       });
//     }

//     update(); // Notify listeners
//   }

//   // Update the selected date index
//   void updateSelectedDate(int index) {
//     selectedDateIndex.value = index;
//   }
// }
import 'package:get/get.dart';

class ActivitiesController extends GetxController {
  final List<Map<String, String>> dates = [
    {"label": "Upcoming", "day": "", "date": "", "month": ""},
    {"label": "FRI", "day": "FRI", "date": "17", "month": "JAN"},
    {"label": "SAT", "day": "SAT", "date": "18", "month": "JAN"},
    {"label": "SUN", "day": "SUN", "date": "19", "month": "JAN"},
    {"label": "Mon", "day": "Mon", "date": "20", "month": "JAN"},
  ];

  var selectedIndex = 0.obs;

  void updateSelectedIndex(int index) {
    selectedIndex.value = index;
    update();
  }
}
