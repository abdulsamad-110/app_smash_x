
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smash_x_app/ui/auth/sign%20up/signup_controller.dart';

void showGenderDialog(BuildContext context) {
  final controller = Get.find<SignupController>();

  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text(
                "Male",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                controller.selectGender("Male");
                Get.back();
              },
            ),
            ListTile(
              title: const Text(
                "Female",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                controller.selectGender("Female");
                Get.back();
              },
            ),
          ],
        ),
      );
    },
  );
}
