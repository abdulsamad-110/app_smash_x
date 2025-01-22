import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smash_x_app/ui/auth/login/login_view.dart';
import 'package:smash_x_app/ui/home/home_view.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigateToNextScreen();
  }

  void navigateToNextScreen() {
    Future.delayed(Duration(seconds: 3), () {
      Get.off(() => LoginView());
    });
  }
}
