// import 'package:flutter/material.dart';

// class UpcomingWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(18),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: const Text(
//         'Upcoming',
//         style: TextStyle(fontSize: 16, color: Colors.black),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class UpcomingWidget extends StatelessWidget {
  final bool isSelected;

  const UpcomingWidget({
    Key? key,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: isSelected ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black, width: 0.3),
      ),
      child: Text(
        "Upcoming",
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
