// import 'package:flutter/material.dart';

// class OnboardingCard extends StatelessWidget {
//   final String imagePath;
//   final String text;

//   const OnboardingCard({
//     Key? key,
//     required this.imagePath,
//     required this.text,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         // Background Image
//         Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage("assets/images/img1.png"),
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//         // Centered Text
//         Center(
//           child: Text(
//             text,
//             style: const TextStyle(
//               fontSize: 24,
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
