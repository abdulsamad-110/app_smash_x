import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smash_x_app/dialogs/myFilterDialog.dart';
import 'package:smash_x_app/ui/activities/activities_controller.dart';
import 'package:smash_x_app/widgets/customrow_widget.dart';

void myDialog() {
  final activitesController = Get.find<ActivitiesController>();

  // Initialize with "All" if no filter is selected
  if (activitesController.selectedFilter.value.isEmpty) {
    activitesController.selectedFilter.value = "All";
  }

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
                myFilterDialog();
              },
              child: CustomRowWidget(
                icon: Icons.sports,
                text: activitesController.selectedFilter.value.isEmpty
                    ? "All"
                    : activitesController.selectedFilter.value,
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                print('Textfield two tapped');
                myFilterDialog();
              },
              child: CustomRowWidget(
                icon: Icons.location_on,
                text: activitesController.selectedFilter.value.isEmpty
                    ? "All"
                    : activitesController.selectedFilter.value,
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
