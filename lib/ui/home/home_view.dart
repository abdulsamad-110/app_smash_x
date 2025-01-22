import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smash_x_app/ui/activities/activities_view.dart';
import 'package:smash_x_app/ui/home/home_controller.dart';
import 'package:smash_x_app/ui/home/widgets/card_slider.dart';
import 'package:smash_x_app/ui/home/widgets/address_container.dart';
import 'package:smash_x_app/widgets/custom_appbar.dart';
import 'package:smash_x_app/ui/home/widgets/matchplay_widget.dart';
import 'package:smash_x_app/ui/home/widgets/sidenav_drawer.dart';
import 'package:smash_x_app/ui/onboarding/onboarding_view.dart';
import 'package:smash_x_app/widgets/custom_bottomnav.dart';

import 'widgets/newes_widget.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      ///// Custom AppBar
      appBar: const CustomAppBar(),
      ///// Side Navigation Drawer
      drawer: SidenavDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///// Onboarding
            OnboardingView(),

            //// Card Slider
            GestureDetector(onTap: () {}, child: const CardSlider()),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  ///// Address Container for Activities
                  AddressContainer(
                    icon: Icons.favorite_outline_outlined,
                    addressText: 'Activities',
                    onTap: () {
                      print('Activities tapped');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ActivitiesView()),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  ///// Address Container for MatchPlay
                  AddressContainer(
                    icon: Icons.play_circle_outline,
                    addressText: 'MatchPlay! System',
                    onTap: () {
                      print('MatchPlay! System tapped');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MatchPlayView()),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ///// Newes widget
            const NewesWidget(),
          ],
        ),
      ),
      ///// Custom Bottom Navigation Bar
      bottomNavigationBar: Obx(
        () => CustomBottomNavbar(
          selectedIndex: controller.selectedIndex.value,
          onTap: (index) => controller.onTabTapped(index),
        ),
      ),
    );
  }
}
