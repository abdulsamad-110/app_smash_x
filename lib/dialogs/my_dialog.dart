import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smash_x_app/dialogs/myfilterdialog.dart';
import 'package:smash_x_app/ui/activities/activities_controller.dart';
import 'package:smash_x_app/widgets/customrow_widget.dart';

void myDialog() {
  final controller = Get.find<ActivitiesController>();

  Get.dialog(
    Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Filter",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                print('Textfield one tapped');
                myFilterDialog(isFirstField: true);
              },
              child: Obx(
                () => CustomRowWidget(
                  icon: Icons.sports,
                  text: controller.selectedText1.value.isEmpty
                      ? "All"
                      : controller.selectedText1.value,
                ),
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                print('Textfield two tapped');
                myFilterDialog(isFirstField: false);
              },
              child: Obx(
                () => CustomRowWidget(
                  icon: Icons.location_on,
                  text: controller.selectedText2.value.isEmpty
                      ? "All"
                      : controller.selectedText2.value,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () => Get.back(),
                child: const Text(
                  "UPDATE",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
