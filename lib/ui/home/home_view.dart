// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smash_x_app/ui/home/home_controller.dart';
import 'package:smash_x_app/ui/home/widgets/center_widget.dart';
import 'package:smash_x_app/ui/home/widgets/container.dart';
import 'package:smash_x_app/ui/home/widgets/custom_appbar.dart';
import 'package:smash_x_app/ui/home/widgets/sidenav_drawer.dart';
import 'package:smash_x_app/widgets/custom_bottomnav.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
            // Onboarding View Container
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 300,
                  color: Colors.amber,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Onboarding view",
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            ///// Centers Title
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Centers",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            ///// Center Widget
            NewWidget(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  AddressContainer(
                    icon: Icons.favorite_sharp,
                    addressText: 'Activites',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AddressContainer(
                    icon: Icons.play_circle_filled_rounded,
                    addressText: 'MatchPlay! System',
                  ),
                ],
              ),
            ),
            SizedBox(
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
