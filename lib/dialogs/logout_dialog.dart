import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../ui/auth/login/login_view.dart';

void myLogoutDialog() {
  Get.dialog(
    Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: Colors.black,
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              child: const Column(
                children: [
                  Icon(
                    Icons.power_settings_new,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Are you sure to log out?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text(
                    "No",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(width: 8),
                TextButton(
                  onPressed: () {
                    Get.offAll(() => const LoginView());
                  },
                  child: const Text(
                    "Yes",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
