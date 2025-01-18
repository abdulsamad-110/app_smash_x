import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'onboarding_controller.dart';

class OnboardingView extends StatelessWidget {
  final OnboardingController controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          ///// PageView
          PageView.builder(
            controller: controller.pageController,
            itemCount: 4,
            onPageChanged: (e) {
              controller.selectedName.value = controller.names[e];
              print("$e ===============> in page change");
            },
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  
                  print("Tapped on Page $index");
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 57, 65, 69),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Image.asset(
                          'assets/img${index + 1}.png', 
                          fit: BoxFit.cover,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          ///// Use Obx to the names list
          Positioned(
            top: 130,
            left: 125,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Obx(
                () => Text(
                  controller.selectedName.value,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          ///// SmoothPageIndicator
          Positioned(
            bottom: 18,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: controller.pageController,
                count: 4,
                effect: const WormEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  spacing: 16,
                  activeDotColor: Colors.green,
                  dotColor: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
