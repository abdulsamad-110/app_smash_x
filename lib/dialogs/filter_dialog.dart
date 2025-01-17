// // import 'package:flutter/material.dart';

// // class FilterDialog extends StatelessWidget {
// //   const FilterDialog({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Dialog(
// //       shape: RoundedRectangleBorder(
// //         borderRadius: BorderRadius.circular(0),
// //       ),
// //       child: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           mainAxisSize: MainAxisSize.min,
// //           children: [
// //             ///// Filter Title
// //             const Align(
// //               alignment: Alignment.centerLeft,
// //               child: Text(
// //                 "Filter",
// //                 style: TextStyle(
// //                   fontSize: 20,
// //                   fontWeight: FontWeight.bold,
// //                 ),
// //               ),
// //             ),
// //             const SizedBox(height: 16),

// //             ///// First Row with Icon
// //             Row(
// //               children: [
// //                 Expanded(
// //                   child: Container(
// //                     padding: const EdgeInsets.symmetric(horizontal: 8.0),
// //                     height: 50,
// //                     decoration: BoxDecoration(
// //                       border: Border.all(color: Colors.grey),
// //                       borderRadius: BorderRadius.circular(8),
// //                     ),
// //                     child: Row(
// //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                       children: [
// //                         const Icon(Icons.sports, size: 20),
// //                         const SizedBox(width: 8),
// //                         GestureDetector(
// //                           onTap: () {},
// //                           child: const Expanded(
// //                             child: Align(
// //                               alignment: Alignment.center,
// //                               child: Text(
// //                                 "All",
// //                                 style: TextStyle(fontSize: 14),
// //                               ),
// //                             ),
// //                           ),
// //                         ),
// //                         IconButton(
// //                           onPressed: () {},
// //                           icon: const Icon(Icons.menu, size: 20),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //             const SizedBox(height: 16),

// //             ///// Second Row with Icon
// //             Row(
// //               children: [
// //                 Expanded(
// //                   child: Container(
// //                     padding: const EdgeInsets.symmetric(horizontal: 8.0),
// //                     height: 50,
// //                     decoration: BoxDecoration(
// //                       border: Border.all(color: Colors.grey),
// //                       borderRadius: BorderRadius.circular(8),
// //                     ),
// //                     child: Row(
// //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                       children: [
// //                         const Icon(Icons.location_on, size: 20),
// //                         const SizedBox(width: 0),
// //                         GestureDetector(
// //                           onTap: () {},
// //                           child: const Expanded(
// //                             child: Align(
// //                               alignment: Alignment.center,
// //                               child: Text(
// //                                 "All",
// //                                 style: TextStyle(fontSize: 14),
// //                               ),
// //                             ),
// //                           ),
// //                         ),
// //                         IconButton(
// //                           onPressed: () {},
// //                           icon: const Icon(Icons.menu, size: 20),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //             const SizedBox(height: 16),

// //             ///// Update Button
// //             Align(
// //               alignment: Alignment.centerRight,
// //               child: TextButton(
// //                 onPressed: () {
// //                   Navigator.pop(context);
// //                 },
// //                 child: const Text(
// //                   "UPDATE",
// //                   style: TextStyle(
// //                     color: Colors.black,
// //                     fontWeight: FontWeight.bold,
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:smash_x_app/dialogs/filter_all_dialog.dart';

// // class FilterDialog extends StatelessWidget {
// //   const FilterDialog({Key? key}) : super(key: key);

// //   Widget _buildFilterRow({
// //     required IconData icon,
// //     required String text,
// //     VoidCallback? onTap,
// //   }) {
// //     return Container(
// //       padding: const EdgeInsets.symmetric(horizontal: 8.0),
// //       height: 50,
// //       decoration: BoxDecoration(
// //         border: Border.all(color: Colors.grey),
// //         borderRadius: BorderRadius.circular(8),
// //       ),
// //       child: Row(
// //         children: [
// //           Icon(icon, size: 20),
// //           const SizedBox(width: 8),
// //           Expanded(
// //             child: Center(
// //               ///// Ensures the text is centered
// //               child: GestureDetector(
// //                 onTap: onTap,
// //                 child: Text(
// //                   text,
// //                   style: const TextStyle(fontSize: 14),
// //                 ),
// //               ),
// //             ),
// //           ),
// //           IconButton(
// //             onPressed: () {
// //               FilterAllDialog();
// //               print('FilterDialog Icon tapped =====>');
// //             },
// //             icon: const Icon(Icons.menu, size: 20),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Dialog(
// //       shape: RoundedRectangleBorder(
// //         borderRadius: BorderRadius.circular(0),
// //       ),
// //       child: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           mainAxisSize: MainAxisSize.min,
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             ///// Filter Title
// //             const Text(
// //               "Filter",
// //               style: TextStyle(
// //                 fontSize: 20,
// //                 fontWeight: FontWeight.bold,
// //               ),
// //             ),
// //             const SizedBox(height: 16),

// //             ///// Filter Rows
// //             _buildFilterRow(
// //               icon: Icons.sports,
// //               text: "All",
// //               onTap: () {
// //                 FilterAllDialog();
// //                 print('FilterDialog Text one tapped =====>');
// //               },
// //             ),
// //             const SizedBox(height: 16),
// //             _buildFilterRow(
// //                 icon: Icons.location_on,
// //                 text: "All",
// //                 onTap: () {
// //                   // Show the FilterAllDialog
// //                   showDialog(
// //                     context: context,
// //                     builder: (BuildContext context) {
// //                       return FilterAllDialog();
// //                     },
// //                   );
// //                 }),
// //             const SizedBox(height: 16),

// //             ///// Update Button
// //             Align(
// //               alignment: Alignment.centerRight,
// //               child: TextButton(
// //                 onPressed: () => Navigator.pop(context),
// //                 child: const Text(
// //                   "UPDATE",
// //                   style: TextStyle(
// //                     color: Colors.black,
// //                     fontWeight: FontWeight.bold,
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// myDialog() {
//   return Get.dialog(Dialog(
//     child: Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ///// Filter Title
//           const Text(
//             "Filter",
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(height: 16),

//           ///// Update Button
//           Align(
//             alignment: Alignment.centerRight,
//             child: TextButton(
//               onPressed: () => Navigator.pop(Get.context!),
//               child: const Text(
//                 "UPDATE",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   ));
// }
