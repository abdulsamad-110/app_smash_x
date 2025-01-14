// import 'package:flutter/material.dart';

// class CircularContainerButton extends StatelessWidget {
//   final VoidCallback onPressed;
//   final Color backgroundColor;
//   final double size;

//   const CircularContainerButton({
//     Key? key,
//     required this.onPressed,
//     this.backgroundColor = Colors.black,
//     this.size = 60.0,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onPressed,
//       child: Container(
//         width: size,
//         height: size,
//         decoration: BoxDecoration(
//           color: backgroundColor,
//           shape: BoxShape.circle,
//         ),
//         alignment: Alignment.center,
//         child: Icon(
//           Icons.done,
//           color: Colors.white,
//           size: size * 0.6,
//         ),
//       ),
//     );
//   }
// }
