// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
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
      appBar: AppBar(
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
            children: [
              ///// Logo
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    color: Colors.white,
                    height: 130,
                  ),
                ],
              ),
              const SizedBox(height: 40),
              ///// Custom Email Field
              CustomTextField(
                hintText: 'Email',
                //autofocus: true,
                prefixIcon: Icon(Icons.person_2_outlined, color: Colors.white),
                //focusNode: controller.emailFocusNode,
                onSubmit: () {
                  // FocusScope.of(context)
                  //     .requestFocus(controller.passwordFocusNode);
                },
              ),
              const SizedBox(height: 20),
              ///// Custom Password Field
              CustomTextField(
                hintText: "Password",
                prefixIcon: const Icon(Icons.lock_outline, color: Colors.white),
                // focusNode: controller.passwordFocusNode,
                onSubmit: () {},
              ),
              const SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        print("Remember password tapped");
                      },
                      child: Text(
                        "✓ Remember password",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print("Recover password tapped");
                      },
                      child: Text(
                        "Recover password",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ///// Custom Login Button
              CustomButton(
                text: "LOGIN",
                onPressed: () {
                  Get.to(() => const HomeView());
                  print("Login button pressed");
                },
              ),
              const SizedBox(height: 20),
              ///// Custom Sign Up Button
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
