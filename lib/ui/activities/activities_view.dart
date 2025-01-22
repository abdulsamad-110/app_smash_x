import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smash_x_app/dialogs/my_dialog.dart';
import 'package:smash_x_app/widgets/custom_appbar.dart';
import 'package:smash_x_app/widgets/custom_bottomnav.dart';

import 'activities_controller.dart';
import 'widgets/daywidget.dart';
import 'widgets/upcomingwidget.dart';

class ActivitiesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ActivitiesController());

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 230, 230),
      appBar: CustomAppBar(
        showFilterIcon: true,
        onFilterPressed: () {
          myDialog();
        },
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            32,
            (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: GestureDetector(
                  onTap: () {
                    controller.selectItem(index);
                  },
                  child: Obx(() {
                    final isSelected = controller.selectedIndex.value == index;
                    return index == 0
                        ? UpcomingWidget(isSelected: isSelected)
                        : DayWidget(index: index, isSelected: isSelected);
                  }),
                ),
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavbar(
        selectedIndex: controller.selectedIndex.value,
        onTap: (int index) {},
      ),
    );
  }
}
