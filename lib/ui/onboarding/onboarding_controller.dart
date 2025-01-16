import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();

  
  
  RxString selectedName='Rubas Hussain'.obs;
  List<String> names = ['Rubas Hussain', 'Shahzaib Khan', 'Billal Ahmed', 'Abdul Samad'];

  @override
  void onInit() {
    super.onInit();

    ///// Auto-slide logic
    Timer.periodic(const Duration(seconds: 3), (timer) {
      int nextPage = (pageController.page?.toInt() ?? 0) + 1;
      if (nextPage >= 4) {
        nextPage = 0; ///// Loop back to the first page
      }
      pageController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }
}
