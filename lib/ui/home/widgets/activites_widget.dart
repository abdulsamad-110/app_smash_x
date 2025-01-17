import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smash_x_app/dialogs/filter_dialog.dart';
import 'package:smash_x_app/dialogs/my_dialog.dart';
import 'package:smash_x_app/ui/home/home_controller.dart';
import 'package:smash_x_app/widgets/custom_appbar.dart';
import 'package:smash_x_app/widgets/custom_bottomnav.dart';

class ActivitiesView extends StatelessWidget {
  final HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///// CustomAppBar
      appBar: CustomAppBar(
        automaticallyImplyLeading: false,
        showFilterIcon: true,
        onFilterPressed: () {
          //myDialog();
          myDialog();
          print('Filter Icon tapped =====>');
        },
      ),
      body: Center(
        child: Container(
          width: 150,height: 150,decoration: BoxDecoration(),
          child: Container(
            width: 100, // Set the width and height to make it a circle
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle, // This makes it circular
              image: DecorationImage(
                image: AssetImage('assets/bg_icon.png'),
                fit: BoxFit.cover, // Ensure the image fits within the circle
              ),
            ),
          ),
        ),
      ),
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
