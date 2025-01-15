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
    if (emailController.text.isEmpty && passController.text.isEmpty) {
      error = 'All fields are required.';
    } else if (emailController.text.isEmpty) {
      error = 'Email is required.';
    } else if (passController.text.isEmpty) {
      error = 'Password is required.';
    }
    return error;
  }
  var isVisible = true.obs; // Observable to track visibility

  // Function to toggle the visibility
  void toggleVisibility() {
    isVisible.value = !isVisible.value;
  }

  @override
  void onInit() {
    super.onInit();
  }
}
