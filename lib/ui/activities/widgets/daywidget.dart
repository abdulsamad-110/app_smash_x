import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:intl/intl.dart';
import 'package:smash_x_app/dialogs/custom_datepicker_dialog.dart';

import '../activities_controller.dart';

class DayWidget extends StatelessWidget {
  final int index;
  final bool isSelected;

  const DayWidget({
    Key? key,
    required this.index,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ActivitiesController>();

    final currentDate = DateTime.now();
    final date = currentDate.add(Duration(days: index - 1));

    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black, width: 0.3),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            //weekday,
            controller.getWeekday(date),
            style: TextStyle(
              color: isSelected
                  ? Colors.white
                  : const Color.fromARGB(255, 133, 132, 132),
              fontSize: 10,
            ),
          ),
          const SizedBox(width: 7),
          Text(
            "${date.day}",
            style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 7),
          Text(
            //month,
            controller.getMonth(date),
            style: TextStyle(
                color: isSelected
                    ? Colors.white
                    : const Color.fromARGB(255, 133, 132, 132),
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
