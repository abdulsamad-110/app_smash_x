import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:smash_x_app/ui/auth/sign%20up/widgets/my_custombutton.dart';

class CustomDatePickerDialog extends StatelessWidget {
  final RxInt selectedMonth = DateTime.now().month.obs;
  final RxInt selectedDay = DateTime.now().day.obs;
  final RxInt selectedYear = DateTime.now().year.obs;

  CustomDatePickerDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use MMM for short month names (e.g., "Jan", "Feb", "Mar")
    List<String> monthsList = List.generate(12, (index) {
      return DateFormat.MMM().format(DateTime(0, index + 1));
    });

    int currentYear = DateTime.now().year;
    // Fix the years list to properly start and end around the current year
    List<int> yearsList =
        List.generate(101, (index) => currentYear - 50 + index);

    //     List<String> yearsList = [
    //   for (int year = startYear; year <= endYear; year++) year.toString()
    // ];

    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          //borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
      contentPadding: const EdgeInsets.symmetric(vertical: 10),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Use Row for layout and space between the scroll pickers
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildScrollPicker(
                items: monthsList,
                selectedItem: selectedMonth.value - 1,
                onChanged: (index) => selectedMonth.value = index + 1,
              ),
              _buildScrollPicker(
                items: List.generate(31, (index) => (index + 1).toString()),
                selectedItem: selectedDay.value - 1,
                onChanged: (index) => selectedDay.value = index + 1,
              ),
              _buildScrollPicker(
                items: yearsList.map((year) => year.toString()).toList(),
                selectedItem: yearsList.indexOf(selectedYear.value),
                onChanged: (index) => selectedYear.value = yearsList[index],
              ),
            ],
          ),
        ],
      ),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MyCustomButton(
              text: 'Cancel',
              onPressed: () => Get.back(),
            ),
            MyCustomButton(
              text: 'OK',
              onPressed: () {
                final selectedDate = DateTime(
                  selectedYear.value,
                  selectedMonth.value,
                  selectedDay.value,
                );
                Get.back(result: selectedDate);
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildScrollPicker({
    required List<String> items,
    required int selectedItem,
    required Function(int) onChanged,
  }) {
    return SizedBox(
      height: 145,
      width: 70,
      child: ListWheelScrollView.useDelegate(
        itemExtent: 40,
        perspective: 0.005,
        physics: const FixedExtentScrollPhysics(),
        childDelegate: ListWheelChildBuilderDelegate(
          childCount: items.length,
          builder: (context, index) {
            return Center(
              child: Text(
                items[index],
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            );
          },
        ),
        onSelectedItemChanged: onChanged,
      ),
    );
  }
}
