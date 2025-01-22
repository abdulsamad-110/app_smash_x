import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smash_x_app/ui/home/home_controller.dart';

import 'package:smash_x_app/widgets/custom_bottomnav.dart';

import '../../../widgets/custom_appbar.dart';

class MatchPlayView extends StatelessWidget {
  final HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///// CustomAppBar
      appBar: CustomAppBar(),
      body: Center(child: Text('Welcome to MatchPlay! System View')), 
      ///// CustomBottomNavbar
      bottomNavigationBar: Obx(
        () => CustomBottomNavbar(
          selectedIndex: controller.selectedIndex.value,
          onTap: (index) => controller.onTabTapped(index),
        ),
      ),
    );
  }
}
