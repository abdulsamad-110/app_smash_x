import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smash_x_app/widgets/custom_filtertext.dart';

import '../ui/activities/activities_controller.dart';

void myFilterDialog() {
  final activitesController = Get.find<ActivitiesController>();

  Get.dialog(
    Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30, bottom: 30, left: 0, right: 0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "All",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                  onTap: () {
                    print('Filter one tapped!');
                    activitesController.updateFilter('Filter one text');
                  },
                  child: const CustomFilterText(text: 'Filter one text')),
              GestureDetector(
                  onTap: () {
                    print('Filter two tapped!');
                    activitesController.updateFilter('Filter two text');
                  },
                  child: const CustomFilterText(text: 'Filter two text')),
              GestureDetector(
                  onTap: () {
                    print('Filter three tapped!');
                    activitesController.updateFilter('Filter three text');
                  },
                  child: const CustomFilterText(text: 'Filter three text')),
            ],
          ),
        ),
      ),
    ),
  );
}
