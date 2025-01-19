import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool automaticallyImplyLeading;
  final bool showFilterIcon;
  final VoidCallback? onFilterPressed;
  final VoidCallback? onEventPressed;

  const CustomAppBar({
    Key? key,
    this.automaticallyImplyLeading = true,
    this.showFilterIcon = false,
    this.onFilterPressed,
    this.onEventPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF121212),
      automaticallyImplyLeading: automaticallyImplyLeading,
      leading: automaticallyImplyLeading
          ? IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () => Scaffold.of(context).openDrawer(),
            )
          : null,
      title: Row(
        children: [
          Image.asset(
            'assets/logo.png',
            height: 30,
            width: 30,
            color: Colors.white,
          ),
          const Spacer(),
          if (showFilterIcon)
            IconButton(
              icon: const Icon(Icons.filter_list_sharp, color: Colors.white),
              onPressed: onFilterPressed,
            ),
          IconButton(
            icon: const Icon(Icons.event, color: Colors.white),
            onPressed: onEventPressed,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
