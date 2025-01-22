// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smash_x_app/dialogs/recover_dialog.dart';
import 'package:smash_x_app/ui/home/home_view.dart';
import 'package:smash_x_app/ui/auth/login/login_controller.dart';
import 'package:smash_x_app/widgets/custom_button.dart';
import 'package:smash_x_app/widgets/custom_textfield.dart';
import 'package:smash_x_app/ui/auth/sign%20up/signup_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            print("Info icon tapped");
          },
          icon: const Icon(Icons.info_outline),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///// Logo Section
              Center(
                child: Image.asset(
                  'assets/slogo.png',
                  height: 155,
                ),
              ),
              const SizedBox(height: 40),

              ///// Email Field
              CustomTextField(
                hintText: 'Email',
                controller: controller.emailController,
                prefixIcon: Icon(Icons.person_2_outlined, color: Colors.white),
                onSubmit: () {},
              ),
              const SizedBox(height: 20),

              ///// Password Field
              CustomTextField(
                hintText: "Password",
                controller: controller.passController,
                prefixIcon: Icon(Icons.lock_outline, color: Colors.white),
                onSubmit: () {},
              ),
              const SizedBox(height: 26),

              ///// Remember Password and Recover Password Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: controller.toggleVisibility,
                          child: Obx(() {
                            return Icon(
                              Icons.done,
                              size: 17.0,
                              color: controller.isVisible.value
                                  ? Colors.white
                                  : Colors.transparent,
                            );
                          }),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          "Remember password",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: myRecoverDialog,
                      child: Text(
                        "Recover password",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 26),

              ///// Login Button
              CustomButton(
                text: "LOGIN",
                onPressed: () {
                  final error = controller.fieldValidation();
                  if (error != null) {
                    controller.showMessage(
                      'Validation Error',
                      error,
                      Colors.red,
                    );
                  } else {
                    controller.showMessage(
                      'Welcome',
                      '',
                      Colors.green,
                    );
                    Get.to(() => HomeView());
                    print("Login button pressed");
                  }
                },
              ),
              const SizedBox(height: 20),

              ///// Sign-Up Button
              CustomButton(
                text: "SIGN UP",
                onPressed: () {
                  Get.to(() => SignupView());
                  print("Sign Up button pressed");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
