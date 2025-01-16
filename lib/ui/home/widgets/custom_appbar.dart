import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF121212),
      leading: IconButton(
        
        icon: const Icon(Icons.menu, color: Colors.white), 
        onPressed: () {
          Scaffold.of(context).openDrawer(); 
        },
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/logo.png',
            height: 30,
            width: 30,
            color: Colors.white,
          ),
          IconButton(
            icon: const Icon(Icons.event, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
