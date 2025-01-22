import 'package:flutter/material.dart';

class DayWidget extends StatelessWidget {
  final int index;

  DayWidget(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 6),
      margin: const EdgeInsets.symmetric(vertical: 08),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          const Text(
            'Day',
            style: TextStyle(
              color: Color.fromARGB(255, 113, 112, 112),
              fontSize: 12,
            ),
          ),
          const SizedBox(width: 7),
          Text(
            '$index',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
