import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smash_x_app/widgets/custom_filtertext.dart';

void myFilterDialog() {
  Get.dialog(
    Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30, bottom: 30, left: 0, right: 0),
        child: Container(
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "All",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CustomFilterText(text: 'Filter one text'),
              CustomFilterText(text: 'Filter two text'),
              CustomFilterText(text: 'Filter three text'),
            ],
          ),
        ),
      ),
    ),
  );
}
