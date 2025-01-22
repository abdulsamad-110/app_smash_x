// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:smash_x_app/ui/activities/activities_controller.dart';

// class MyDateWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(ActivitiesController());

//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: SizedBox(
//         width:
//             MediaQuery.of(context).size.width * 1.0, 
//         height: 150,
         
//         child: GridView.builder(
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 4,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//           ),
//           itemCount: controller.dates.length,
//           physics: const NeverScrollableScrollPhysics(), 
//           shrinkWrap: true,
//           itemBuilder: (context, index) {
//             return GestureDetector(
//               onTap: () => controller.updateSelectedIndex(index),
//               child: Obx(
//                 () {
//                   final isSelected = controller.selectedIndex.value == index;
//                   return Container(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
//                     decoration: BoxDecoration(
//                       color: isSelected ? Colors.black : Colors.white,
//                       borderRadius: BorderRadius.circular(10),
//                       border: Border.all(
//                         color: isSelected ? Colors.black : Colors.grey,
//                         width: 1.5,
//                       ),
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           controller.dates[index]["label"] ?? "",
//                           style: TextStyle(
//                             color: isSelected ? Colors.white : Colors.grey,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         const SizedBox(height: 4),
//                         Text(
//                           controller.dates[index]["date"] ?? "",
//                           style: TextStyle(
//                             color: isSelected ? Colors.white : Colors.black,
//                             fontSize: 16,
//                           ),
//                         ),
//                         const SizedBox(height: 4),
//                         Text(
//                           controller.dates[index]["month"] ?? "",
//                           style: TextStyle(
//                             color: isSelected
//                                 ? Colors.white
//                                 : Colors.grey, 
//                             fontSize: 12,
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
