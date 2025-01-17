import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smash_x_app/dialogs/myFilterDialog.dart';
import 'package:smash_x_app/widgets/customrow_widget.dart';

void myDialog() {
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
            CustomRowWidget(
              icon: Icons.sports,
              text: "All",
              onIconTap: () {
                print('Sports icon tapped');
                myFilterDialog();
              },
              onTextTap: () {
                print('Text tapped');
                myFilterDialog();
              },
            ),
            const SizedBox(height: 16),
            CustomRowWidget(
              icon: Icons.location_on,
              text: "All",
              onIconTap: () {
                print('Location icon tapped');
              },
              onTextTap: () {
                print('Location text tapped');
                myFilterDialog();
              },
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
