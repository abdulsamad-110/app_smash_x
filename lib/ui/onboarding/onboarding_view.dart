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
                  // decoration: BoxDecoration( 
                  //   borderRadius: BorderRadius.circular(0),
                  // ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Image.asset(
                          'assets/sp${index + 1}.png',
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
            top: 120,
            left: 90,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Obx(
                () => Text(
                  controller.selectedName.value,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
              ),
            ),
          ),
          ///// SmoothPageIndicator
          Positioned(
            bottom: 28,
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
                  dotColor: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
