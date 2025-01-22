import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  // TextEditingController nameController = TextEditingController();
  // TextEditingController phoneController = TextEditingController();

  ///// Define FocusNodes
  // final FocusNode emailFocusNode = FocusNode();
  // final FocusNode passwordFocusNode = FocusNode();

  ///// Validation for email and password
  fieldValidation() {
    String? error;
    if (emailController.text.isEmpty) {
      error = 'Email is required.';
    } else if (passController.text.isEmpty) {
      error = 'Password is required.';
    }
    return error;
  }

///// Validation massage
  void showMessage(String title, String message, Color backgroundColor) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.TOP,
      backgroundColor: backgroundColor,
      colorText: Colors.white,
    );
  }

  var isVisible = true.obs;

  void toggleVisibility() {
    isVisible.value = !isVisible.value;
  }

  @override
  void onInit() {
    super.onInit();
  }
}
