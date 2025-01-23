import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smash_x_app/widgets/custom_filtertext.dart';

import '../ui/activities/activities_controller.dart';

void myFilterDialog({required bool isFirstField}) {
  final  controller = Get.find<ActivitiesController>();

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
                   if (isFirstField) {
                    controller.updateSelectedText1('Filter first text.');
                   }else {
                    controller.updateSelectedText2('Filter first text.');
                   }
                   Get.back();
                  },
                  child: const CustomFilterText(text: 'Filter first text')),
              GestureDetector(
                  onTap: () {
                    print('Filter second tapped!');
                    if (isFirstField) {
                      controller.updateSelectedText1('Filter second text.');
                    }else {
                      controller.updateSelectedText2('Filter second text.');
                    }
                    Get.back();
                  },
                  child: const CustomFilterText(text: 'Filter second text')),
              GestureDetector(
                  onTap: () {
                    print('Filter three tapped!');
                    if (isFirstField) {
                      controller.updateSelectedText1('Filter third text.');
                    }else {
                      controller.updateSelectedText2('Filter third text.');
                    }
                    Get.back();
                  },
                  child: const CustomFilterText(text: 'Filter third text')),
            ],
          ),
        ),
      ),
    ),
  );
}
