import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smash_x_app/ui/activities/activities_controller.dart';

class MyDateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ActivitiesController());

    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 20,
          mainAxisSpacing: 0,
        ),
        itemCount: controller.dates.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => controller.updateSelectedIndex(index),
            child: GetBuilder<ActivitiesController>(
              builder: (_) {
                final isSelected = controller.selectedIndex.value == index;
                return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        controller.dates[index]["label"] ??
                            "N/A", // Fallback value
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        controller.dates[index]["date"] ?? "N/A",
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        controller.dates[index]["month"] ?? "N/A",
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
