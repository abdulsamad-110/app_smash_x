import 'package:flutter/material.dart';

import '../../../dialogs/logout_dialog.dart';

class SidenavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 90),
      child: Drawer(
        child: Container(
          color: Color(0xFF121212),
          child: ListView(
            children: [
              createDrawerItem(
                  icon: Icons.notifications, text: 'Alerts', context: context),
              createDrawerItem(
                  icon: Icons.emoji_events,
                  text: 'Championship',
                  context: context),
              createDrawerItem(
                  icon: Icons.book_online,
                  text: 'My bookings',
                  context: context),
              createDrawerItem(
                  icon: Icons.event, text: 'Events', context: context),
              createDrawerItem(
                  icon: Icons.sports_tennis,
                  text: 'Book a court',
                  context: context),
              createDrawerItem(
                  icon: Icons.school,
                  text: 'Coaching Sessions',
                  context: context),
              createDrawerItem(
                  icon: Icons.leaderboard, text: 'Ranking', context: context),
              createDrawerItem(
                  icon: Icons.sports_kabaddi,
                  text: 'Tournaments',
                  context: context),
              createDrawerItem(
                  icon: Icons.attach_money, text: 'Fees', context: context),
              createDrawerItem(
                  icon: Icons.location_city, text: 'Centers', context: context),
              createDrawerItem(
                  icon: Icons.info, text: 'Info & Contact', context: context),
              createDrawerItem(
                  icon: Icons.power_settings_new,
                  text: 'Logout',
                  context: context,
                  onTap: () {
                    myLogoutDialog();
                  }),
            ],
          ),
        ),
      ),
    );
  }

  Widget createDrawerItem({
    IconData? icon,
    required String text,
    String? badge,
    required BuildContext context,
    VoidCallback? onTap,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
      trailing: badge != null
          ? Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                badge,
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
            )
          : null,
      onTap: onTap ??
          () {
            Navigator.pop(context);
          },
    );
  }
}
