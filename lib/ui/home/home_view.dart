import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smash_x_app/ui/home/home_controller.dart';
import 'package:smash_x_app/ui/home/widgets/activites_widget.dart';
import 'package:smash_x_app/ui/home/widgets/card_slider.dart';
import 'package:smash_x_app/ui/home/widgets/address_container.dart';
import 'package:smash_x_app/widgets/custom_appbar.dart';
import 'package:smash_x_app/ui/home/widgets/matchplay_widget.dart';
import 'package:smash_x_app/ui/home/widgets/sidenav_drawer.dart';
import 'package:smash_x_app/ui/onboarding/onboarding_view.dart';
import 'package:smash_x_app/widgets/custom_bottomnav.dart';
import 'package:smash_x_app/widgets/onboarding_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      ///// CustomAppBar
      appBar: CustomAppBar(),
      ///// SidenavDrawer
      drawer: SidenavDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /////onboarding
            OnboardingView(),

            const Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Centers",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),

            ///// CardSlider
            const CardSlider(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  ///// AddressContainer
                  AddressContainer(
                    icon: Icons.favorite_outline_outlined,
                    addressText: 'Activites',
                    onTap: () {
                      print('Activities tapped');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ActivitiesView()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ///// AddressContainer
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
            const SizedBox(
              height: 20,
            ),
          ],
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
