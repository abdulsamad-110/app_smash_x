import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF121212),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // IconButton(
              //   icon: Icon(Icons.menu, color: Colors.white),
              //   onPressed: () {
              //     Scaffold.of(context).openDrawer();
              //   },
              // ),
              Image.asset(
                'assets/logo.png',
                height: 30,
                width: 30,
                color: Colors.white,
              ),
              // IconButton(
              //   icon: Icon(Icons.event, color: Colors.white),
              //   onPressed: () {},
              // ),
            ],
          ),
          IconButton(
            icon: Icon(Icons.event, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
