import 'package:flutter/material.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  CustomBottomNavbar({required this.selectedIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavItem(Icons.home, 'Home', 0),
            buildNavItem(Icons.book, 'Bookings', 1),
            buildNavItem(Icons.person, 'Guest', 2),
            buildNavItem(Icons.favorite, 'Activites', 3),
            buildNavItem(Icons.emoji_events, 'Championships', 4),
          ],
        ),
      ),
    );
  }

  Widget buildNavItem(IconData icon, String label, int index) {
    bool isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.blue : Colors.grey,
            size: 22,
          ),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.blue : Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  static const List<Widget> widgetOptions = <Widget>[
    Center(child: Text('Home Screen')),
    Center(child: Text('Search Screen')),
    Center(child: Text('Messages Screen')),
    Center(child: Text('Notifications Screen')),
    Center(child: Text('Profile Screen')),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom Bottom Navbar')),
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: CustomBottomNavbar(
        selectedIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
