import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bottomnavcontroller.dart';


class BottomNavBarView extends StatelessWidget {

   final controller = Get.put(Bottomnavcontroller());

  final List<Widget> pages = const [
    Center(
      child: Text(
        'Home Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
      ),
    ),
    Center(
      child: Text(
        'Search Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
      ),
    ),
    Center(
      child: Text(
        'Profile Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX BottomNavigationBar'),
        backgroundColor: Colors.green,
      ),
      body: Obx(() => pages[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline),
              label: 'Bookings',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Guest',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: 'Activites',
              backgroundColor: Colors.yellow,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_events_outlined),
              label: 'Championships',
              backgroundColor: Colors.blue,
            ),
          ],
          currentIndex: controller.selectedIndex.value,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: controller.changeIndex,
          elevation: 5,
          type: BottomNavigationBarType.shifting,
        ),
      ),
    );
  }
}
