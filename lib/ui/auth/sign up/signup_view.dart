import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smash_x_app/ui/auth/sign%20up/signup_controller.dart';
import 'package:smash_x_app/ui/auth/sign%20up/widgets/custom_button.dart';
import 'package:smash_x_app/ui/auth/sign%20up/widgets/custom_signup_textfield.dart';
import 'package:smash_x_app/ui/auth/sign%20up/widgets/customsgnup_widget.dart';
import 'package:smash_x_app/dialogs/gender_signup_dialog.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    final SignupController controller = Get.put(SignupController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Personal Data",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  CustomSignupTextfield(
                    label: 'First Name',
                    controller: TextEditingController(),
                  ),
                  CustomSignupTextfield(
                    label: 'Surname',
                    controller: TextEditingController(),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SignupTextfield(
                      label: 'Date of birth',
                      controller: controller.dateController,
                      description: '14/01/2025',
                      menuIcon: Icons.menu,
                      enabled: false,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => showGenderDialog(context),
                    child: Obx(() => SignupTextfield(
                          label: 'Gender',
                          controller: TextEditingController(
                              text: controller.selectedGender.value),
                          description: controller.selectedGender.value.isEmpty
                              ? 'Male'
                              : controller.selectedGender.value,
                          menuIcon: Icons.menu,
                          enabled: false,
                        )),
                  ),
                  SignupTextfield(
                    label: 'Mobile Phone',
                    controller: TextEditingController(),
                    onButtonPressed: () {},
                  ),
                  CustomSignupTextfield(
                    label: 'Email',
                    controller: TextEditingController(),
                  ),
                  CustomSignupTextfield(
                    label: 'Password',
                    controller: TextEditingController(),
                  ),
                  CustomSignupTextfield(
                    label: 'Repeat Password',
                    controller: TextEditingController(),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
            Positioned(
              right: 20,
              bottom: 0,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.black,
                child: const Icon(
                  Icons.done,
                  color: Colors.white,
                ),
                shape: const CircleBorder(),
                elevation: 7,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
