import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smash_x_app/dialogs/my_dialog.dart';
import 'package:smash_x_app/widgets/custom_appbar.dart';

import 'activities_controller.dart';
import 'widgets/daywidget.dart';
import 'widgets/upcomingwidget.dart';

class ActivitiesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ActivitiesController());

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 225, 225),
      appBar: CustomAppBar(
        showFilterIcon: true,
        onFilterPressed: () {
          myDialog();
        },
      ),
      // body: ListView.builder(
      //   scrollDirection: Axis.horizontal,
      //   itemCount: 32,
      //   itemBuilder: (context, index) {
      //     if (index == 0) {
      //       return UpcomingWidget();
      //     } else {
      //       return DayWidget(index);
      //     }
      //   },
      // ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            32,
            (index) {
              return Padding(
                padding: const EdgeInsets.only(right: 0.0, left: 8.0),
                child: index == 0 ? UpcomingWidget() : DayWidget(index),
              );
            },
          ),
        ),
      ),
      // CustomBottom
    );
  }
}
