import 'package:flutter/material.dart';

class UpcomingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Text(
        'Upcoming',
        style: TextStyle(fontSize: 16, color: Colors.black),
      ),
    );
  }
}
